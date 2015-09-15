PhoneLab Data Format
====================

Once you have received the data you requested the next step is to process it.
PhoneLab provides some of our own tools as is to help with this process and we
encourage experiments to reuse and contribute to them. However, if you have your
own tools the following documentation on the structure of our data archives and
files will be helpful.

Archive Format
--------------

The resulting ``TAR`` archive we will provide to IRB-approved experimenters
consists of one file per device per tag per day structured as follows:
``device_identifier/tag/year/month/day.out.gz``, so as an example
``b3793ae1229920c02b564adbc200780168cd42ed/Location-Misc-PhoneLab/2014/11/19.out.gz``.
When generating these these files we have attempted to ensure the following:

-  **All log messages are captured.** Our data collection tools make
   every effort to recover all generated log messages: including
   configuring large Linux log buffers in our platform image and caching
   up to several days worth of log messages on each device between
   uploads. However, these measures are obviously not foolproof and
   experimenters are encouraged to implement their own reliability
   mechanisms as needed to detect missing log tags. Also please see the
   note below on one important and well-known source of missing logs:
   early boot.

-  **Each file is sorted by time.** However, this is complicated by the
   fact that in certain cases ``logcat`` can generate multiple log lines
   with identical timestamps—particularly if the logged data contains
   newlines. In the case of identical timestamps we defer to the order
   in which the lines were originally logged by ``logcat``, and when
   processing identical timestamps split across multiple files, the
   order in which the files were uploaded to the PhoneLab backend.

-  **Duplicate log lines are omitted.** Our efforts to recover all log
   messages sometimes lead to duplicate logs being uploaded or log files
   being processed twice, but we attempt to remove duplicate messages
   during post-processing. However, this is complicated by the lack of
   timestamp uniqueness described above, which we work around in our
   logging helper classes using a unique ID embedded in the JSON
   message. However, because deduplication is done during log processing
   only using the timestamp fields, duplicate messages may exist in the
   archive.

Missing Early Boot Logs
~~~~~~~~~~~~~~~~~~~~~~~

One well-known source of missing log messages are from messages generated early
during Android boot. The problem arises because at this point the device does
not yet have a network-provided date and time, and so log messages are
timestamped as being generated in 1970—at the beginning of the Unix epoch. It
would probably be possible to fix this problem by retroactively correcting early
boot log message timestamps once a network-provided time is available, but have
yet to implement this fix. At present, these timestamps will be (correctly)
sorted into a 1970 tag file but (incorrectly) intermingled with many other log
tags also generated during other boot cycles.

If you are running an experiment that requires early boot logs, please feel free
to contact the `PhoneLab team`_ and we will see if we can come up with a better
solution to the problem together. For now these logs will simply be omitted from
all archives.

.. _PhoneLab team: experiment@phone-lab.org


File Format
-----------

Each line in the file begins with the following standard fields. If you have
worked with ``logcat`` before, this will look familiar to you, as many of the
fields are taken directly from the ``logcat`` output. We describe each of the
standard fields in more detail below, using several examples based on actual log
messages uploaded by PhoneLab Director Geoffrey Challen's device.

================= ================= =================== ============================== ========== ========= ========= ==========================
Device Identifier UNIX Timestamp    Ordering            Date and Time                  Process ID Thread ID Log Level Tag
================= ================= =================== ============================== ========== ========= ========= ==========================
``7699f273...``   ``1416261509970`` ``1416261509970.0`` ``2014-11-17 21:58:29.970997`` ``769``    ``1026``  ``I``     ``Power-Battery-PhoneLab``
``7699f273...``   ``1416261509970`` ``1416261509970.1`` ``2014-11-17 21:58:29.970997`` ``879``    ``1143``  ``D``     ``Location-Misc-PhoneLab``
================= ================= =================== ============================== ========== ========= ========= ==========================

#. Device Identifier: A unique identifier for each device.

#. UNIX Timestamp: Milliseconds since 1970. Note even at this resolution this
   timestamp is not guaranteed to be unique across all log messages, creating the
   need for the next field.

#. Ordering: This field takes the form
   ``milliseconds_since_1970.order_in_upload_file``. For log messages that do
   not share a timestamp with any other line, it will be
   ``milliseconds_since_1970.0``. In other cases it will be set as shown in the
   two examples above. Note that this is only sufficient to provide an ordering
   for identically-timestamped messages in the same file; cross-file ordering is
   still not handled properly by our tool chain. Also note that this example is
   contrived as identical timestamps occur most often due to (1) multiple
   ``logcat`` messages on neighboring lines of the same app or (2) ``logcat``
   messages that contain newlines.

#. Date and Time: Human-readable date and timestamp using the device's locale.
   In this case the timestamps are in Eastern Standard Time (EST).

#. Process and Thread IDs: Fairly self-explanatory.

#. Log Level: Android uses verbose (V), debug (D), info (I), warning (W) and
   error (E) log levels on a per-message basis. `This page has more details.
   <http://developer.android.com/reference/android/util/Log.html>`__

#. Tag: Log messages are either generated by the instrumentation we have added
   or by existing logging included in the Android platform by default or left
   enabled by many apps after deployment—despite Android's `suggestions to the
   contrary.
   <http://developer.android.com/tools/publishing/publishing_overview.html#publishing-prepare>`__

These fields are following by a log message as a single string, which can be up
to 64k characters long—but hopefully nowhere close to that limit! Obviously the
format of the log string varies based on what is being recorded, but here are a
few examples. First, a JSON-formatted log string generated by our tools under
the ``Power-Battery-PhoneLab`` tag, with internal fields that are
self-explanatory:

.. code-block:: json

    {
        "Action":"android.intent.action.BATTERY_CHANGED",
        "LogFormat":"1.0",
        "BatteryProperties":{
            "Status":"Charging",
            "Present":true,
            "Voltage":4342,
            "Temperature":255,
            "CurrentNow":-794372,
            "Health":"Good",
            "Level":94,
            "PlugType":"AC",
            "ChargeCounter":-2147483648,
            "Technology":"Li-ion"
        },
        "Scale":100
    }

And second, an example of something not formatted in JSON---in this case,
garbage collection output generated under the ``dalvikvm`` tag:

    ``GC_FOR_ALLOC freed 259K, 6% free 18632K/19680K, paused 16ms, total 16m``

PhoneLab Cruncher
-----------------

.. todo::
    revise this section about cruncher.

The PhoneLab ``cruncher`` is our own early attempt to produce a
reasonably-efficient and kind-of user-friendly set of log
post-processing tools. You are welcome to `download, use, and modify
it <http://platform.phone-lab.org:8080/gitweb?p=phonelab%2Fcruncher.git;a=summary>`__
to suit your needs—just don't expect us to support it. It should already
support many of the log tags we have added to the PhoneLab platform,
particularly ones we have used for our own experimental purposes.

The ``cruncher`` (ab)uses the Django object-relational mapper (ORM) to
ease the process of manipulating a database in Python. Given that (1)
importing logs from the files into the database and (2) processing the
logs further to produce useful output are both potentially
time-consuming, the ``cruncher`` splits log import and processing into
three phases with different parallelization constraints, each of which
can be repeated as needed during post-processing tool development:

#. **Log import:** the process of importing logs from the flat files
   into the database is parallelized by log file, meaning that logs can
   be processed in any order in any queue. As a result, no relationships
   between log tags can be established or used during import. Instead,
   each log line should generate one (or many) database objects.
   Django's transaction and bulk loading support are used to make this
   relatively quick.
#. **Per-device processing:** the second stage is parallelized by device
   and provides the opportunity to combine information from multiple log
   messages. For example, separate messages logged during file
   ``open()`` and ``close()`` along with information about intervening
   ``read()`` and ``write()`` operations could be combined to create a
   single file session object. However, at this stage no cross-device
   relationships or statistics can be computed. The ``cruncher``
   provides several different optimized iterators allowing code to loop
   over one or more of the objects created during the import stage—but
   again, strictly on a per-device basis.
#. **Final processing:** once all per-device processing has completed
   ``cruncher`` code has access to all models from all devices and can
   compute overall statistics or generate graphs integrating data from
   the entire experiment.

Currently the ``cruncher`` is capable of making efficient use of
multiple cores to maximize IO throughput when importing and processing
logs, but not yet of using multiple machines to further parallelize the
process. We are actively working on this feature. If you would like to
help, we would welcome the assistance.
