.. _hint_play_round:

Hint for ``play_round`` bug
===========================

The purpose of this function is to compute the sum of the rolls.  Here
is an ``ipython`` session that conputes the sum of the values between
0 and 10.

::

    $ uv run ipython
    Python 3.13.5 (main, Jul 23 2026, 00:18:28) [Clang 20.1.4 ]
    Type 'copyright', 'credits' or 'license' for more information
    IPython 9.5.0 -- An enhanced Interactive Python. Type '?' for help.
    Tip: Use `%timeit` or `%%timeit`, and the  `-r`, `-n`, and `-o` options to easily profile your code.
 
    In [1]: total = 0

    In [2]: for i in range(11):
       ...:     total = total + i
       ...:     print(f"total after add in {i}: {total}")
       ...: 
       ...: 
    total after add in 0: 0
    total after add in 1: 1
    total after add in 2: 3
    total after add in 3: 6
    total after add in 4: 10
    total after add in 5: 15
    total after add in 6: 21
    total after add in 7: 28
    total after add in 8: 36
    total after add in 9: 45
    total after add in 10: 55

Notice the update to ``total``.  How does it compare to the update to ``score`` in ``play_round``?

FYI, call to the built-in ``range`` function produces a sequence of
values starting at zero and going up to but not including ``11``, the
upper bound.
