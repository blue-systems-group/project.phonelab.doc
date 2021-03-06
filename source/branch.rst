PhoneLab Branch Philosophy
==========================

Before you go ahead and make changes to PhoneLab platform, we recommend you to
at least read this page to get some idea on these two question:

 1. Where is my experiment branch based on?

 2. How will my changes be merged?


This diagram shows how we manage branches for our platform at high level. You
can find more details next.

.. figure:: _static/branch.png
    :align: center
    :scale: 40%

    PhoneLab Platform Branching Diagram.


PhoneLab Develop Branch
-----------------------

When there is a major release of Android, we usually wait some time for it to be
become mature enough. Then we choose a fairly stable release for our device
(Nexus 5) and create our develop branch from there. The branch name is
``phonelab/$tag/develop``, where ``$tag`` is the AOSP release tag.  For
instance, we used the release ``android-4.4.4_r1`` for KitKat, ``android-5.1.1_r3`` for
Lollipop, and ``cm-13.0`` for Mashmallow.

Our develop branch usually only contains device specific changes to make the
platform fully functional, including GPS, cellular---parts there are usually
broken in original AOSP platform. The develop branch serves as a common ground
and does not contain any instrumentations or experiment specific changes.


Experiment Branches
-------------------

To support parallel development of multiple experiments, we create a branch for
each experiment on top of our PhoneLab develop branch. The experiment branch
name is in the format of ``experiment/$tag/$id/$name``:

 1. ``$tag`` is the base AOSP release tag that our PhoneLab develop branch is
    based on, for instance, ``android-5.1.1_r3`` or ``cm-13.0``.

 2. ``$id`` is an integer that uniquely identifies your experiment.

 3. ``$name`` is a code name for your experiment, which is determined by you.


By default, your experiment branch is not publicly available: only PhoneLab
administrators and yourself have full access to the branch.


Deployment
----------

When we deploy your experiment, we will create a release branch from our
PhoneLab develop branch, and merge your experiment branch into that release
branch.

Since we may continue development on our develop branch AFTER we create the
experiment branch for you, **it is your responsibility to make sure that the
merging finishes smoothly without conflicts.** You can ensure this by trying to
merge our develop branch into your experiment to resolve any conflicts
beforehand, so that the merging on our part is just a fast-forward.

Here are steps to make sure your changes can be successfully merged.

First, fetch the latest PhoneLab develop branch.

.. code-block:: bash

    $ repo forall -j 8 -pvec git fetch aosp phonelab/$tag/develop:phonelab/$tag/develop

Second, make sure your are in your experiment branch.

.. code-block:: bash

    $ repo forall -j 8 -pvec git checkout experiment/$tag/<id>/<name>

Finally, merge PhoneLab develop branch into your experiment branch.

.. code-block:: bash

    $ repo forall -j 8 -pvec git merge phonelab/$tag/develop

You may need repeat the last step a couple of times to fix possible conflicts.

.. warning::
    NEVER NEVER merge any other branches (e.g., release branches, other
    experiment branches, logging branches) into your branch. Your experiment
    branch should only contains your changes!


.. warning::
    If your experiment branch can not be merged into our release branch, it will
    be excluded from the release.


We developed a tool that will check whether or not your experiment changes meets
the above requirement. **Please make sure your pass the check before notifying us
your changes are ready.**

https://github.com/blue-systems-group/project.phonelab.platform_checker
