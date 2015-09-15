Logging Infrastructure
======================

This page answers these questions:

 1. How does PhoneLab collect data?

 2. How do I add new logging to PhoneLab platform?

 3. What has already been logged?


Log Data Collection
-------------------

We rely on `Android Logcat system
<http://developer.android.com/tools/debugging/debugging-log.html>`_ for data
collection. Basically, you use the `Log
<http://developer.android.com/reference/android/util/Log.html>`_ class to write
log messages, and we have a small daemon app, `PhoneLab Conductor
<https://play.google.com/store/apps/details?id=edu.buffalo.cse.phonelab.conductor&hl=en>`_,
running on the device, which will collect the log messages and upload them to
our backend server. More specifically, **we are collecting the ``main`` logcat
buffer using ``threadtime`` format.** Please see `here
<http://developer.android.com/tools/debugging/debugging-log.html#outputFormat>`_
for explanation about the logcat buffers and formats.
 

We made some improvements to the ``Logcat`` system:

#. You can log up to 64K characters in one line. Android's default limit is 4K.

#. We enlarge the kernel's buffer for logcat messages from 256KB to 16MB, to
   tolerate more aggressive logging you may come up with, and also avoid losing
   log messages due to buffer overflow.

#. We developed a new daemon service, called ``kmsgd``, which pipes all kernel
   log messages (logged by ``printk``) to the logcat buffer, which then will be
   collected and uploaded by PhoneLab Conductor.

#. We add ``year`` information to the logcat's ``threadtime`` format.


Guidelines for Logging
----------------------

When adding instrumentation to the PhoneLab platform there are really only a few
rules and guidelines that we ask experimenters to follow:

#. **Follow the logging conventions below.** This helps us keep things organized
   and avoid duplicated effort. You can also check out the existing tags for
   examples providing more guidance on our logging conventions.

#. **Record something new and interesting.** Check our existing tags before you get
   started. If it's already being logged, then someone did part of your job for
   you! Proceed directly to data request and analysis. The only exception to
   this rule is cases where the platform is already logging information but
   poorly-formatted—in this case duplicated logging using JSON for easy
   deserialization may be worth it.

#. **Remember: Android is more than services.** The PhoneLab Android platform
   includes many interesting libraries as well as pre-packaged apps such as an
   alarm clock, calculator, and the Chrome web browser. These may be very
   interesting places to add instrumentation.

#. **Log intelligently, particularly when adding instrumentation to hot code
   paths.**  Android can support fairly high-volume logging, but please be
   intelligent when adding instrumentation that could potentially produce a
   great deal of output as this also slows down post-processing. Do you really
   need to log every screen redraw separately? Maybe recording the number of
   redraws per second and logging that once per second is sufficient. If you
   have questions, contact the PhoneLab team.

#. **Log using JSON.** JSON deserialization libraries exist for almost every useful
   post-processing language. Writing tools based on regular-expressions is
   tedious and terrible.


Log Format Conventions
----------------------

We describe the tag, message, and commenting conventions we ask experimenters to
follow. Our goal is not to annoy you---it is to make log messages easy to
process and categorize, and to ensure that we avoid duplication of effort
between different research teams.

The tags should consist of three parts: (1) category, (2) subcategory, (3) and a
short organizational identifier, connected using a dash ('-'):
``Category-Subcategory-Organization``. We use ``PhoneLab`` as the organizational
code for the log messages added and maintained by the core PhoneLab team. Here
are a few examples:

- ``Network-Wifi-PhoneLab``: collects network information about the Wifi interface,
  added by PhoneLab.

- ``Power-Screen-PhoneLab``: collects power information related to screen usage,
  added by PhoneLab.

Use common sense to determine the category and sub-category field, but don't get
too bogged down here---this is our best attempt at a taxonomy, and it's far from
perfect. (For example: the ``Power-Screen-PhoneLab`` tag above could also be
under a ``Usage`` category, since the screen power state indicates whether
foreground or background activity is occurring.) You can check current category
and sub-category information of existing tags to determine how your new
instrumentation fits in. If none of the categories or sub-categories meets your
needs, feel free to propose your own.

The content of the log message should be a JSON string, making your results easy
to deserialize by a variety of downstream tools. We provide some helper classes
to assist in this process.


PhoneLab Log Helper
-------------------

To simplify logging JSON strings, we provide a set of of helper classes and
interfaces in ``frameworks/base/core/java/edu/buffalo/cse/phonelab/json``. One
interface and two helper classes are defined:

- ``JSONable``: Any class that implements this interface must provide a
  ``toJSONObject`` method, which returns a ``StrictJSONObject`` representing
  this object.

- ``StrictJSONObject`` and ``StrictJSONArray``: They are similar to
  ``org.json.{JSONObject,JSONArray}`` but only accepts ``JSONable`` objects as
  values.  Please see comments at the head of ``StrictJSONObject.java`` for
  details.

For example, this is a code snippet that we added to log Wifi scan results:


.. code-block:: java

  import edu.buffalo.cse.phonelab.json.StrictJSONObject;

  // somewhere in the code

    (new StrictJSONObject(PHONELAB_TAG))
      .put(StrictJSONObject.KEY_ACTION, WifiManager.SCAN_RESULTS_AVAILABLE_ACTION)
      .put("Results", mScanResults)
      .log();



Note that:

#. When appropriate, each ``StrictJSONObject`` should have a
   ``StrictJSONObject.KEY_ACTION`` key to differentiate different types of
   output logged under the same tag. For example, we could use the common
   ``Network-Wifi-PhoneLab`` tag to log multiple Wifi-related events associated
   with different actions---scan results, Wifi connections and disconnections,
   etc---using a different action attribute for each. **In fact, an exception will
   be thrown if the StrictJSONObject does not have an action key when
   its ``log`` method is called.**

#. You can only put ``JSONable`` objects into ``StrictJSONObject``, which means
   if the object you want to log does not implements ``JSONable``, you'll have
   to implement by yourself. It's not that difficult as it sounds like, please
   see ``ScanResult.java`` for an example.

#. When its ``log`` method is called, the ``StrictJSONObject`` will add a
   ``timestamp`` field if it does not exist already. This is to help you
   determine ordering between log messages, or want the exact timestamp when
   some event happened.


Document You Logs
-----------------

To help us keep an record of what have been logged, we require you comment you
logs in a specific way so that we can automate the process of traversing the
whole source tree building a complete log taxonomy. This is an example comment
for the Wifi scan results tag described above:

.. code-block:: java

    /**
     * PhoneLab
     *
     * {
     * "Category": "Network",
     * "SubCategory": "Wifi",
     * "Tag": "PhoneLab-Network-Wifi",
     * "Action": "android.net.wifi.SCAN_RESULTS",
     * "Description": "Wifi scan results."
     * }
     */
    (new StrictJSONObject(PHONELAB_TAG))
      .put("Action", WifiManager.SCAN_RESULTS_AVAILABLE_ACTION)
      .put("Results", mScanResults)
      .log();


Note that:

#. The first two lines must match the example above exactly. They are the anchor
   point for our tag processing script.

#. The main body of the comment should be a JSON string, with the five keys in
   the example. Any extra keys will be ignored. Any ``*`` symbol inside the JSON
   string will also be ignored.


Log In C/C++ World
------------------

We recommend you to use the convenient ``StrictJSONObject`` whenever you are
instrumenting Java sources. If you are working in lower level C or C++ files
here are some instructions that you may find helpful.

The header file you need to include for Android logcat support is located in
``system/core/include/log/log.h``. The main function you will use is
``__android_log_buf_write``. It takes 4 arguments:

#. ``bufID``: Android logcat buffer id. Must be one of ``LOG_ID_{SYSTEM, MAIN, RADIO,
   EVENTS}`` constants.

#. ``prio``: Log line priority. Must be one of ``ANDROID_LOG_{VERBOSE, DEBUG, INFO,
   WARN, ERROR, FATAL}`` constants.

#. ``tag``: Tag name. Please use our tag name convention described above.

#. ``msg``: The message body you want to log. Please use a JSON string.

You can also use the more friendly ``__android_log_buf_print`` to get ``printf``
style string formatting.


Uploading Raw Files
-------------------

Sometimes it may be convenient to be able to update raw data files, such as
packet traces. Therefore, we also provide a ``FileUploderService`` in addition
to the text-log collection mechanism. You can see an example on how to use this
service at `this project
<https://github.com/blue-systems-group/project.conductor.test>`_.
