.. _day1-materials:

Pick Up Day 1 Materials
=======================

We have put together some files for you to use during CAPP Camp.  This section
contains instructions on how to pick up the files.

In the instructions below, the ``$`` signals the command-line prompt.
It should **not** be included when you run the listed commands.

The first step in all three sets of instructions (``cd``) will move you to your
home directory.  This step will ensure that you store the file that you will be
downloading and the directory that will result from unzipping the downloaded file
in your home directory.  You are welcome to move (or delete) these materials
after CAPP Camp is over, but for now,
please leave them in your home directory.  All our instructions
will assume that they reside in your home directory.

**Windows** In a WSL terminal window, run the following commands::

  $ cd
  $ wget --no-check-certificate -nv https://people.cs.uchicago.edu/~jturk/capp-camp-files.zip
  $ sudo apt install unzip
  $ unzip capp-camp-files.zip

**Linux** In a terminal window, run the following commands::

  $ cd
  $ wget -nv https://people.cs.uchicago.edu/~jturk/capp-camp-files.zip
  $ unzip capp-camp-files.zip

**macOS** 

In a terminal window, run the following commands::

  $ cd
  $ curl -O https://people.cs.uchicago.edu/~jturk/capp-camp-files.zip
  $ unzip capp-camp-files.zip
  

