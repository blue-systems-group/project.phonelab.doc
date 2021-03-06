Get Started
===========

PhoneLab use the same tools to manage platform source with AOSP, except that we
are hosting our own platform mirror. Here we are not trying to cover every
aspect of the building process, which is already `well documented by AOSP
<https://source.android.com/source/initializing.html>`_.


Registration
------------

First, you will need to register an account on our Gerrit server at
http://platform.phone-lab.org:8080. You will need to use the OpenID
authentication provided by `Yahoo! <https://www.yahoo.com/>`_, since `Google has
terminated its OpenID support
<https://code.google.com/p/gerrit/issues/detail?id=2677>`_.

Then please sign in and fill up your account information, most notably your SSH
public key and email address. These two information are required later on to
clone the platform source.

Finally, please open the email sent by Gerrit to confirm your email address, and
let us know your Gerrit account name.


Downloading and Building
------------------------

Please follow the `AOSP instructions
<https://source.android.com/source/initializing.html>`_ to set up your local
develop environment.

Before you continue, make sure that you have contacted us with these information:

 - Who you are
 - What the experiment is about (be brief)
 - What will be a good code name (it will be used in creating the
   experiment branch ``experiment/cm-13.0/${id}/${codename}``, where
   ``${id}`` is assigned by us.)
 - Your account name and email on our Gerrit server.

Next, you are ready to clone the source code.

.. code-block:: bash

    $ repo init -u ssh://<USERNAME>@platform.phone-lab.org:29418/cm-shamu/manifest -b <EXPERIMENT_BRANCH>
    $ repo sync

Where ``<USERNAME>`` is your user name on our Gerrit server, and
``<EXPERIMENT_BRANCH>`` is the branch name we created for you.

Since ``repo sync`` will put every repository in a "detached head" mode, you may
want to check out your experiment branch so further changes will be staged on
your branch:

.. code-block:: bash

    $ repo forall -pvec git fetch phonelab <EXPERIMENT_BRANCH>:<EXPERIMENT_BRANCH>

Now you can go a head and build the platform. Note the build target is for
Nexus 6, aka "shamu".

.. code-block:: bash
    
    $ source build/envsetup.sh
    $ lunch cm_shamu
    $ make -j 16

After the compilation finishes, you can use ``fastboot`` to flash the images to
your device. Given that you are going to be modifying the platform we suggest
that you obtain a Google Nexus 6 smartphone
to use as a development device. Happily they are not terribly expensive.
