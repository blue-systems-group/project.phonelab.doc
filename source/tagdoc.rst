Summary
-------
PhoneLab's instrumented Android platform currently contains:

* 7 tags, 22 actions,

* ... in 4 categories,

* ... added by 1 institution.



Catetory: Location
++++++++++++++++++


Tag: ``Location-Misc-PhoneLab``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. |Action: ``android.location.LOCATION_CHANGED``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/LocationManagerService.java:1978 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/LocationManagerService.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l1978>`_
   |Description: Location update.



Catetory: Network
+++++++++++++++++


Tag: ``Network-Misc-PhoneLab``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. |Action: ``android.net.ConnectivityService.PACKET_COUNT_SAMPLE``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/ConnectivityService.java:5021 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/ConnectivityService.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l5021>`_
   |Description: Per interface packet sampling.

#. |Action: ``com.android.server.action.NETWORK_STATS_UPDATED``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/net/NetworkStatsService.java:988 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/net/NetworkStatsService.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l988>`_
   |Description: Per process network statistics.



Tag: ``Network-Telephony-PhoneLab``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. |Action: ``android.intent.action.ANY_DATA_STATE``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/TelephonyRegistry.java:830 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/TelephonyRegistry.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l830>`_
   |Description: Cellular data connectivity changed.

#. |Action: ``android.intent.action.DATA_CONNECTION_FAILED``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/TelephonyRegistry.java:885 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/TelephonyRegistry.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l885>`_
   |Description: Cellular data connection failed.

#. |Action: ``android.intent.action.PHONE_STATE``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/TelephonyRegistry.java:798 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/TelephonyRegistry.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l798>`_
   |Description: Phone calling state changed (incoming call).

#. |Action: ``android.intent.action.SERVICE_STATE``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/TelephonyRegistry.java:726 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/TelephonyRegistry.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l726>`_
   |Description: Cellular service state changed.

#. |Action: ``android.intent.action.SIG_STR``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/TelephonyRegistry.java:759 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/TelephonyRegistry.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l759>`_
   |Description: Cellular signal strength changed.

#. |Action: ``android.telephony.CALL_FORWARDING_CHANGED``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/TelephonyRegistry.java:481 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/TelephonyRegistry.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l481>`_
   |Description: Call forwarding status changed.

#. |Action: ``android.telephony.CELL_LOCATION_CHANGED``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/TelephonyRegistry.java:643 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/TelephonyRegistry.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l643>`_
   |Description: Cell tower location changed.

#. |Action: ``android.telephony.DATA_ACTIVITY_CHANGED``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/TelephonyRegistry.java:518 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/TelephonyRegistry.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l518>`_
   |Description: Cellular data activity.

#. |Action: ``android.telephony.MESSAGE_WAITING_CHANGED``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/TelephonyRegistry.java:446 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/TelephonyRegistry.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l446>`_
   |Description: Message waiting status changed.



Tag: ``Network-Wifi-PhoneLab``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. |Action: ``android.net.wifi.LINK_CONFIGURATION_CHANGED``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `wifi/java/android/net/wifi/WifiStateMachine.java:2280 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=wifi/java/android/net/wifi/WifiStateMachine.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l2280>`_
   |Description: Link confiration changed.

#. |Action: ``android.net.wifi.RSSI_CHANGED``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `wifi/java/android/net/wifi/WifiStateMachine.java:2225 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=wifi/java/android/net/wifi/WifiStateMachine.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l2225>`_
   |Description: Link RSSI update.

#. |Action: ``android.net.wifi.SCAN_RESULTS``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `wifi/java/android/net/wifi/WifiStateMachine.java:2202 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=wifi/java/android/net/wifi/WifiStateMachine.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l2202>`_
   |Description: Wifi scan results.

#. |Action: ``android.net.wifi.STATE_CHANGE``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `wifi/java/android/net/wifi/WifiStateMachine.java:2248 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=wifi/java/android/net/wifi/WifiStateMachine.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l2248>`_
   |Description: Network connected/disconnected.

#. |Action: ``android.net.wifi.WIFI_STATE_CHANGED``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `wifi/java/android/net/wifi/WifiStateMachine.java:1846 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=wifi/java/android/net/wifi/WifiStateMachine.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l1846>`_
   |Description: Wifi state change (enabled/disabled).

#. |Action: ``android.net.wifi.supplicant.STATE_CHANGE``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `wifi/java/android/net/wifi/WifiStateMachine.java:2303 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=wifi/java/android/net/wifi/WifiStateMachine.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l2303>`_
   |Description: WPA supplicant conection state change.



Catetory: PackageManager
++++++++++++++++++++++++


Tag: ``PackageManager-Misc-PhoneLab``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. |Action: ``android.intent.action.PACKAGE_{ADDED, CHANGED, REMOVED}``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/pm/PackageManagerService.java:6292 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/pm/PackageManagerService.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l6292>`_
   |Description: Package installed/uninstalled/updated.



Catetory: Power
+++++++++++++++


Tag: ``Power-Battery-PhoneLab``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. |Action: ``android.intent.action.BATTERY_CHANGED``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/BatteryService.java:473 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/BatteryService.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l473>`_
   |Description: Battery status changed.



Tag: ``Power-Screen-PhoneLab``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

#. |Action: ``android.intent.action.SCREEN_OFF``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/power/Notifier.java:523 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/power/Notifier.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l523>`_
   |Description: Screen turned off.

#. |Action: ``android.intent.action.SCREEN_ON``
   |File: `frameworks/base <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git>`_ `services/java/com/android/server/power/Notifier.java:438 <http://platform.phone-lab.org:8080/gitweb?p=platform/frameworks/base.git;a=blob;f=services/java/com/android/server/power/Notifier.java;hb=refs/heads/phonelab/android-4.4.4_r1/develop
#l438>`_
   |Description: Screen turned on.

Last updated 2015-09-15
