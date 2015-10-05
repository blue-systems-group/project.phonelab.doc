Existing Instrumentation
========================

We expect our PhoneLab platform to include an increasing amount of
instrumentation added both by PhoneLab developers and by external research
teams. If our build already contains instrumentation recording what you're
interested in, you can proceed directly to requesting data.


Logging Branches
----------------

Instrumentations are stagged in their respective branches by category, such as
network, location, or power. Here is a list of current logging branches:


#. ``logging/android-5.1.1_r3/1/network``
#. ``logging/android-5.1.1_r3/2/power``
#. ``logging/android-5.1.1_r3/3/location``
#. ``logging/android-5.1.1_r3/4/packagemanager``



Add Your Instrumentation
------------------------

To add instrumentations to these branch, for example,
``logging/android-5.1.1_r3/1/network``, please follow these steps:

First, if you have not cloned the repository yet:

.. code-block:: bash

    $ cd <WORKING_DIRECTORY>
    $ repo init -u ssh://<USERNAME>@platform.phone-lab.org:8080/platform/manifest -b logging/android-5.1.1_r3/1/network
    $ repo sync

The ``<USERNAME>`` is your user name on our `Gerrit server
<http://platform.phone-lab.org:8080/#/q/status:open>`_.

Next, figure out the repository which you want to add instrumentation, say
``frameworks/base``, create a working branch:

.. code-block:: bash

    $ cd frameworks/base
    $ git checkout -b my_instrumentation


Then you add the instrumentation, commit and upload your changes for review:

.. code-block:: bash

    $ git commit -a -S
    $ git push aosp refs/for/logging/android-5.1.1_r3/1/network

.. note::
    Note the remote branch name when you push: it is a special Gerrit pseudo
    branch for changes to be reviewed.


Here is a list of existing instrumentations on our platform.

.. include:: tagdoc.rst
