PhoneLab Documentation for Experimenters
========================================

https://phone-lab.org/doc/


How to Setup
------------

First, clone this repository:

    $ git clone git@github.com:blue-systems-group/project.phonelab.doc.git

Goto the repository directory, and set up a virtual environment:

    $ virtualenv .virtualenv/doc
    $ pip install -r requirements.txt

Then build the document:
    $ make html


What's Next
-----------

This documentation is generated using Sphinx. Please refer to `its documentation
<http://sphinx-doc.org/>`_ on how to add contents.
