Experiment Logistics
====================

Guidelines
----------

Experimenting with the platform image running on several-hundred actual
smartphones is risky, so our goal is to make this possible but not necessarily
easy. Keeping the following guidelines in mind as you make your experimental
changes will help:

 * **Don't break stuff.** The fastest way to lose our confidence is to provide
   us with changes that don't build or cause parts of the our PhoneLab image to
   fail.  There's a road back from this point, but it's uphill. Test your
   changes thoroughly before submitting them to us.

 * **Make useful and novel changes.** Given the dangers associated with this
   kind of experimentation we are expecting researchers to approach us with
   exciting and novel ideas that could potentially benefit PhoneLab
   participants. (In that case, your changes will live on forever as part of the
   base system!)

 * **Be patient.** This isn't a fast process and it's not designed to be. If you
   have a paper deadline in a week---or even a month---forget it. Your
   scheduling constraints are your problem—keeping our participants safe is
   ours.


Release Schedule
----------------

We will first push the platform changes to a small group of PhoneLab developers,
leave it running for at least a week to ensure the changes does not
significantly affect user experience. After that, we will push the changes to
the entire testbed. So please **expect at least two weeks delay** from when your
changes are ready to when they are deployed on the whole testbed.

To avoid issues with cross-modification compatibility or interference, we plan
to generally only distribute one experimental modification on PhoneLab at any
given point in time. The PhoneLab team will work with you to schedule your
experiment to ensure that it receives enough time on the testbed to generate
useful data. If your changes are unintrusive and useful, they may stick around,
but we provide no guarantees of this. We do guaranteed that if we receive
complaints from participants or notice stability issues your changes will be
reverted immediately.
