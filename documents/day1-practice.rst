Day 1 Filesystem Lab
====================

For this lab, you will be practicing manipulating files on the
filesystem using the terminal.

Open a new terminal and navigate to the ``capp-camp-files/filesystem-lab`` directory using ``cd``.

In this directory you’ll find:

- ``check.py`` - a python script that checks if your directory structure
  looks as expected
- ``files/`` - a directory with a bunch of text files all mixed up
  together

At any point you may type ``uv run python check.py`` **within this
directory** and you will see a description of your progress.

Tips
----

- Do not rush through to the “brute force” solution, consider what
  keyboard shortcuts, globs, etc. will be helpful. The goal is to gain
  familiarity with the terminal.
- Run ``uv run python check.py`` after each part to ensure that you
  didn’t miss anything.

Part 0: Explore ``files/``
--------------------------

Take a look at the ``files/`` directory provided. Use ``ls``, ``cd``,
and ``cat`` to examine the files.

You should discover that there are files about animals, planets, and
comets all mixed up.

Our goal today is to reorganize these files.

Part 1: Making Directories
--------------------------

We’ll want to create a few directories within your ``filesystem-lab``
directory:

- ``animals/`` - to contain all files on animals
- ``space/`` - which will have two subdirectories

  - ``space/planets``
  - ``space/comets``

Use the ``mkdir`` command to create all of these directories.

Run ``uv run python check.py`` (from the ``filesystem-lab`` directory)
when ready.

Part 2: Moving Files
--------------------

Next, you will need to move files into place, ``check.py`` will check
which files are in the right place.

Note: One of the files is misnamed. Figure out which file is misnamed
and name it properly when you move it.

Tip: if in doubt based on a file name, use ``cat`` to view the contents.

Run ``uv run python check.py`` (from the ``filesystem-lab`` directory)
when ready.

Part 3: Editing Files
~~~~~~~~~~~~~~~~~~~~~

Each file in ``planets/`` contains a line “moons: N” (where N is a
number of moons).

You’ll need to make the following changes:

- Jupiter had three new moons confirmed in 2023, so update Jupiter to
  have 95 moons instead of 92.
- There is no ``venus.txt``. Venus has no moons. Add a new file for
  Venus, with “moons: 0”.

Once you are done with those changes, ``uv run python check.py`` will
confirm you are done with this lab!

Credits
~~~~~~~

All ASCII art used is in the public domain, taken from asciiart.eu w/
attribution intact.
