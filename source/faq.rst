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


                                                             




.. _link: http://developer.android.com/reference/android/telephony/TelephonyManager.html#getDeviceId()

