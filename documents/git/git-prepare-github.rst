.. _tutorial-git-prepare-github:

Preparing to use Git and  GitHub
================================

Git is a version control system and GitHub is a hosting service for
Git.  We will discuss version control in general and Git, in
particular, in detail in today's session.  The purpose of this
document is to guide you through the steps necessary to
set up your laptop to use Git and Github.  Specifically, you will:

- Install Git on your laptop
- Create a GitHub account (if needed),
- Create an SSH key on your laptop, and
- Upload that key to GitHub.

To start open a terminal window (macOS) or a WSL window (Windows). You
will do all of your setup work in this window.  Also, please recall
that we use ``$`` to signal the command-line prompt.  Do **not**
include it when you run the commands described below.


Installing Git
--------------

You may already have git installed.  Run the following command to
determine whether it is installed::

  $ git --version

If git is installed, the command will run successfully and output
version information. If so, please move on to the
:ref:`github-account` section.

If git is not installed, please follow the instructions for your
operating systrem.

.. _macos_git_install:

MacOS Installation Instructions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

If git is not installed, you will get an error message saying that the
developer tools were not found. You may also get a pop-up message:

.. figure:: git-img/git-install-macos.png
  :scale: 40%	    

Click ``Install`` to continue. Once the installation step is complete,
verify that ``git`` is installed by running::

  $ git --version

If this command succeeds, please move on to the :ref:`github-account`
section.  If this command fails, please ask for help.

If you do not get the pop-up, then the most straightforward way to
install Git on macOS is to use ``xcode-select``, which is packaged
with macOS.  At the command line run::

  $ xcode-select --install

This command will prompt you to install the Command Line Tools. Click
``Install`` to continue.

Once the installation step is complete, verify that ``git`` is
installed by running::

  $ git --version

If this command fails, please ask for help.


WSL Installation Instructions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You can install Git on WSL using the following command::

	$ sudo apt-get update
	$ sudo apt-get install git

You may be asked for your laptop password when you run ``sudo``.

Once the installation step is complete, verify that ``git`` is
installed by running::

  $ git --version

If this command fails, please ask for help.


.. _github-account:

Creating a GitHub Account
-------------------------

If you do not already have a GitHub account, you can get create one
here: https://github.com/join.  We encourage you to use your CNetID as
your GitHub account name, if possible. If that name is already taken,
try using your CNetID as a prefix in your Github username.


Setting up SSH Access
---------------------

The next step is to create an SSH key and upload it to GitHub, which
will allow you to access your GitHub repositories from the terminal.

While these steps may seem a bit intricate, you only need to do them
once for your laptop.  If at some later date, you want to access your
repository from a different computer (e.g. one of the CS Department's
Linux servers), you will have to create an SSH key on that machine and
upload it to GitHub.

As in the previous sections, these commands should be run in a
terminal/WSL window.  It is best to do the next few steps in your home
directory, so run::

  $ cd

to ensure that you are in your home directory rather than somewhere else in
your directory tree.


Creating an SSH Key
~~~~~~~~~~~~~~~~~~~

When you log into the GitHub website, you will use the username and
password associated with your GitHub account.  When using
Git commands from the terminal, however, things are a bit different.
In particular, GitHub uses two mechanisms for authenticating yourself
from the terminal: Personal Access Tokens and SSH Keys. We will
be using SSH keys.

In a nutshell, an SSH key is a file that resides in your home
directory that you can think of as a way to store a secure password.
(SSH keys are a bit more complex than that but, for our purposes, we
can just think of them as extra-secure passwords.)

To create an SSH key, run the following command from the terminal::

    $ ssh-keygen -t ed25519 -C "Laptop SSH Key"

(As an aside, Ed25519 is a public-key signature system.  It is more
secure than RSA, which may be more familiar to some of you.)

You will see the following prompt::

    Generating public/private ed25519 key pair.
    Enter file in which to save the key (DEFAULT_FILE_NAME):

Press Enter. This will select the default file path shown in the
prompt. On macOS, ``DEFAULT_FILE_NAME`` will have the form
``/Users/YOUR_USERNAME/.ssh/id_ed25519``.  On WSL,
``DEFAULT_FILE_NAME`` something of the form:
``/home/YOUR_USERNAME/.ssh/id_ed25519``.  In both cases,
``YOUR_USERNAME`` is the user name that you use on your laptop.

.. note::

   If, after pressing Enter, you the following message::

        DEFAULT_FILE_NAME already exists.
        Overwrite (y/n)?

   then you already have an Ed25519 SSH key in your home directory and
   you can skip ahead to the :ref:`Uploading your SSH key to GitHub <uploading>` section below.

Next, you will see this prompt::

    Enter passphrase (empty for no passphrase):

Just press Enter here. You will be asked to confirm (just press Enter again)::

    Enter same passphrase again:

.. note::

    While it may seem counterintuitive, we don't want our SSH
    key to have a passphrase (this is an added layer of security that we don't
    need here; your GitHub account will still be secure even if your
    SSH key doesn't have a password).

If all goes well, you should see something like this::

    Your identification has been saved in DEFAULT_FILE_NAME
    Your public key has been saved in DEFAULT_FILE_NAME
    The key fingerprint is:
    SHA256:CvLPtFFx70iR3Fas2o0pmbnWwQ8gJSVke8FmWzzPmhU Laptop SSH Key
    The key's randomart image is:
    +--[ED25519 256]--+
    |       .+oo. ..  |
    |       ..+=++.E  |
    |        o=*oo= . |
    |        .+o+. +  |
    |  . .   S..O.B   |
    |   o . o .*oX .  |
    |    . +   .+.+   |
    |     + o  o . .  |
    |      +  .       |
    +----[SHA256]-----+

This means your key was created correctly.


.. _uploading:

Uploading Your SSH Key to GitHub
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Now, you need to instruct GitHub to accept your SSH key. To do this, log into https://github.com/
and go to your Settings page by clicking on the top-right account icon, and then selecting "Settings"
in the drop-down menu. Then, click on "SSH and GPG keys".

Now, click on the green "New SSH key" button. This will take you to a page where you can upload your
SSH key:

.. figure:: git-img/github-ssh-key.png
   :alt: "SSH keys / Add new" page on GitHub

You will be asked for three values: a title, a key type, and the key
itself. The title can be anything you want, but we suggest something
like "Laptop SSH Key".  Choose ``Authentication Key`` from
the drop down menu for the key type.

The value of the key is contained in the ``.ssh/id_ed25519.pub`` file in your home directory. To print
out the contents of that file, we can just use the ``cat`` command::

    $ cat ~/.ssh/id_ed25519.pub

This will print a few lines of output starting with ``ssh-ed25519`` and
ending with ``Laptop SSH Key``.  Copy the whole output
to the clipboard; you can do this by clicking and dragging the mouse
from the first character to the last character, and then pressing
``Ctrl-Shift-C`` (``Cmd-C`` for MacOS users).

Then, paste the key into the "Key" field on the GitHub page. Then click on the green "Add SSH Key"
button.

To verify that you correctly uploaded the key, try running the following command::

    $ ssh -T git@github.com

You may see a message like this::

    The authenticity of host 'github.com (140.82.114.4)' can't be established.
    ECDSA key fingerprint is SHA256:p2QAMXNIC1TJYWeIOttrVc98/R1BUFWu3/LiyKgUfQM.
    Are you sure you want to continue connecting (yes/no/[fingerprint])?

You can safely enter "yes" here. You should then see a message like this::

    Hi username! You've successfully authenticated, but GitHub does
    not provide shell access.

This means your SSH key is properly set up. Don't worry about the "does not provide shell access," that is
normal.

If you are unable to set up your SSH key, please make sure to ask for help.

.. _git-configure:

Configuring git
---------------

Git has a collection of options that can be configured from the
command-line.  In this section, you are going to set three of them:
your name, your email address, and the default branch name (we don't
expect this last one to be meaningful at this time, but it needs to be
set).

You will run these commands in a terminal window.  Start by running::

  $ cd

to ensure that you are in your home directory.

Then run the following command with ``"YOUR NAME"`` replaced by your
actual name to set the user name option::

   $ git config --global user.name "YOUR NAME"

To set the user email option, run the following command with ``YOUR
UCHICAGO EMAIL ADDRESS`` replaced with your UChicago email address::

  $ git config --global user.email "YOUR UCHICAGO EMAIL ADDRESS"

And finally, run::

  $ git config --global init.defaultBranch main

to set the name of the default branch to ``main``.

To confirm that you set these option correctly, you can run::

  $ cat .gitconfig

or::

  $ git config --list

Make sure that you see your name and your email address and not the
capitalized placeholders!


