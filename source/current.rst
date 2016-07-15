Experiments
===========

PhoneLab is a public smartphone testbed. We solicit researchers with exciting
new ideas to experiment on PhoneLab that are made possible with PhoneLab's
ability to modifying the AOSP platform. Over the years, PhoneLab has facilitated
the following smartphone platform experiments.

Ongoing
--------

1. `Bluetooth Low Energy <https://kabru.eecs.umich.edu/?page_id=971>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**11/03/2015 - Present**

We collect information that nearby BLE powered devices publicly broadcast. This
enables us to study the privacy threats they pose. Please make sure you keep the
Bluetooth radio turned on for sometime during the day.

**Contact**:
 | Kassem Fawaz (Advisor: Prof. Kang G. Shin)
 | RTCL @ University of Michigan, Ann Arbor



2. `GridWatch: Crowdsourcing the Detection of Power Outages and Restorations <http://grid.watch/phonelab.html>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**03/03/2016 - Present**

This experiment is gathering information to validate the GridWatch system.
GridWatch is a system that attempts to crowd-source the detection of power
outages and power restorations. These events are sensed using unmodified
smartphones. The key insight is that when a charging phone stops charging, it
might have experienced a power outage. When multiple phones that are nearby each
other stop charging at the same time, it becomes more likely that an outage
occurred. This same logic applies for power restorations, except instead of
stopping charging, phones start charging. This experiment will gather your
battery state (charging, not charging, percent charged) and your last known GPS
location when battery state changes.

**Contact**:
 | Noah Klugman (Advisor: Prabal Dutta)
 | University of Michigan, Ann Arbor



3. `Smartphone Storage Analysis <https://sites.google.com/site/uiucstoragestudy/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**06/13/2016 - Present**

The purpose of this study is to determine the amount of storage space consumed
by modern mobile apps on smartphones and effect of app usage on storage. The
results will help developing the new generation of storage for smartphones and
identifying minimum amount of storage space today's smartphones must have.

**Contact**:
 | Ashish Bijlani (Advisor: Prof. Roy H. Campbell)
 | UIUC


4. CPU Thermal Management
~~~~~~~~~~~~~~~~~~~~~~~~~

This experiment aims to study the thermal characteristics of smartphones. We
monitor the temperature of your smartphones and attempt to detect bad choices
made by Android that make the phones run hot. Our goal is to use this
information to prevent phones from (unnecessarily) overheating and also improve
battery life.

**Contact**:
 | Guru Prasad Srinivasa and Scott Haseley (Advisor: Geoffrey Challen)
 | University at Buffalo


5. `QoEye <https://blue.cse.buffalo.edu/projects/qoe/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**07/04/2016 - Present**

QoEye collects high-level interactions with app components to help study Quality
of Experience (QoE). Our goal is to discover common app usage patterns and to
use this data to replay these interactions, eventually determining the
contributing factors of QoE for various apps.

**Contact**:
 | Scott Haseley (Advisor: Geoffrey Challen)
 | University at Buffalo


6. `TicToc: User Authentication through UI profiling <https://www.perform.illinois.edu/exp/tictoc/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**07/04/2016 - Present**

This study will record low-level interaction with the phone to study
identifiable user-machine interaction abnormalities that are unique to each
user. We hypothesize that this profiling low-level interaction will be useful in
detecting impersonation attacks.

**Contact**:
 | Ahmed M Fawaz (Advisor: Prof. William H. Sanders)
 | UIUC


7. `M2Auth <https://sites.google.com/site/m2auth/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**07/06/2016 - Present**

This experiment aims to explore the behavioral biometrics-the way that user
interact with the smartphone, such as how user touching the screen instead of
what user touch. This data will help us to design a Multi-Modal Authentication
framework that incorporate different modalities of these biometrics.

**Contact**:
 | Ahmed Mahfouz (Advisor: Prof. Tarek Mahmoud)
 | Minia University, Egypt


Completed
---------

1. `DefDroid <http://defdroid.github.io/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**9/21/2015 - 11/3/2015**

The goal of DefDroid is to make the mobile OS more defensive to curb the naughty
apps that drain your battery or over-consume your mobile data, storage, etc. We
design DefDroid so that it makes your mobile phone more sustainable
without breaking the main functionalities of the apps.

**Contact**:
 | Ryan (Peng) Huang (Advisor: Prof. Yuanyuan Zhou)
 | UCSD


2. `Lock Screen <https://surveys.cs.berkeley.edu/lockscreen/lockscreen.html>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**10/22/2015 - 6/3/2016**

This experiment looks at how users interact with their lock screens. We collect
log information on whether a code-based lock is enabled, how much time is spent
before unlocking the device, how long users take to enter the code and how many
failed attempts occur. This information will help researchers to design lock
screens with better security while maintaining or improving upon existing usage
patterns.

**Contact**:
 | Marian Harbach (Advisor: Serge Egelman)
 | ICSI @ UC Berkeley


3. `LTE Handover Analysis <https://sites.google.com/a/umich.edu/robustnet-handover>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**10/28/2015 - 6/3/2016**

This experiment aims to study the decision policy and performance impact of
handovers including WiFi-Cellular handover, IRAT (Inter radio access technology)
handover, and intra-LTE handover.

**Contact**
 | Shichang Shawn Xu (Advisor: Prof. Z. Morley Mao)
 | University of Michigan, Ann Arbor


4. `Runtime Permission <https://sites.google.com/site/runtimeperm/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**11/24/2015 - 3/16/2016**

This is a study on privacy preferences of mobile users when it comes to
sensitive data requests originating from third party applications.  To that end,
we want to track sensitive data requests and ask users whether they want to
block such requests as it happens. However we hope to prompt the question at
most once per day per user when such a request occurs. We are also hoping to log
surrounding contextual data when such a question is prompted to the user.

**Contact**:
 | Primal Wijesekera (Advisor: Prof. Konstanin Beznosov)
 | UC Berkeley & University of British Columbia



5. `Maybe <https://blue.cse.buffalo.edu/projects/maybe/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**11/13/2015 - 11/24/2015**

One of the reasons programming mobile systems is so hard is the uncertainty
created by the wide variety of environments a typical app encounters at
runtime. In many cases only post-deployment user testing can determine the
right algorithm to use, the rate at which something should happen, or when an
app should attempt to conserve energy. Programmers should not be forced to make
these choices at development time. But today’s programming languages leave no
way for programmers to express and structure their uncertainty about runtime
conditions, forcing them to adopt ineffective, fragile, and untested ad-hoc
approaches to runtime adaptation. We introduce a new approach based on
structured uncertainty through a new language construct: the maybe statement.

**Contact**:
 | Yihong Chen (Advisor: Geoffrey Challen)
 | University at Buffalo


6. `File System Analysis <https://blue.cse.buffalo.edu/projects/pocketlocker/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**11/3/2015 - 11/13/2015**

Centralized cloud storage services such as Dropbox have revolutionized the way
that users share files and access data across their growing number of devices.
But today’s cloud storage options have serious limitations affecting mobile
battery-powered smartphones. Many central cloud storage providers require each
client to have enough storage for an entire replica, which may not be feasible
on smartphones with an order-of-magnitude less storage than laptops and
desktops. Centralized cloud storage does not scale as users add more storage and
misses the opportunity to harness free space users already have. And
centralized cloud storage provides poor support for mobile devices, both
failing to leverage natural mobility patterns when distributing data and
potentially causing costly mobile data traffic.

**Contact**:
 | Carl Nuessle (Advisor: Geoffrey Challen)
 | University at Buffalo


7. `Quality of Experience <https://blue.cse.buffalo.edu/projects/qoe/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**11/3/2015 - 11/16/2015**

Of all the resources that smartphones manage, human attention is the most
precious. While processor speed and core count, memory and storage capacity, and
network bandwidth have steadily and sometimes rapidly increased, the number of
hours in the day has not. And as users spend an increasing amount of time with
their personal computing devices, it is more important than ever that these
devices ensure that their time is used effectively. We refer to this as quality
of experience (QoE).

**Contact**:
 | Scott Haseley (Advisor: Geoffrey Challen)
 | University at Buffalo


8. `Jouler <https://blue.cse.buffalo.edu/projects/jouler/>`_
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**3/7/2016 - 3/16/2016**

Despite the fact that current smartphone platforms already incorporate energy
measurement tools and multiple energy control mechanisms, smartphone battery
lifetimes continue to frustrate users. This is because measurements and
mechanisms are of limited utility without policies that utilize them to achieve
different energy management goals, such as meeting a lifetime target or
providing good performance to a user’s favorite apps. To address this problem we
are developing Jouler, a policy framework enabling effective and flexible
smartphone energy management.

**Contact**:
 | Anudipa Maiti (Advisor: Geoffrey Challen)
 | University at Buffalo
