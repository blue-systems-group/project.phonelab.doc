Frequently Asked Questions
==========================

What is the device ID in the log lines?
---------------------------------------

The device ID is a string of length 40. The value is a hex digest of hashed
``TelephonyManager.getDeviceId()`` (link_). A sample code snippet to get the
device ID in Java is as follows:

.. code-block:: Java

    TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
    MessageDigest digester = MessageDigest.getInstance("SHA-1");
    byte[] digest = digester.digest(telephonyManager.getDeviceId().getBytes());
    deviceID = (new BigInteger(1, digest)).toString(16);


What happed if the participant opt out my experiment?
-----------------------------------------------------

Note that your experimental changes will be pushed to participants' devices and
will be running during the experiment period **no matter** whether the user opt
out your experiment or not. That choice (opt-out) will be recorded by us and
only used to determine whether we should release the data collected from that
particular participant's device to you (experimenter).



Do I need to log a event if it's already logged in other branch?
----------------------------------------------------------------

It depends. If the event is logged in one of the
``logging/android-5.1.1_r3/...`` branches, then NO NEED to log it again, since
these branches will almost always be included in the release branch. In fact, we
strongly advise you NOT to repeat the effort, as it will potentially cause merge
conflicts.

However, if the event is logged in another experiment branch (e.g.,
``experiment/android-5.1.1_r3/...``), then we suggest you log the information
again in your branch, since the other experiment may end earlier than yours.


Shall I merge other logging or experiment branches into my branch?
------------------------------------------------------------------

**You should never do this**. The only branch you need to keep up to date is the
PhoneLab develop branch (``phonelab/android-5.1.1_r3/develop``). 


                                                             




.. _link: http://developer.android.com/reference/android/telephony/TelephonyManager.html#getDeviceId()

