# What do you need? #
In order to be able to execute your test you need **[Python](https://www.python.org/)** in Version 3.x. If you don't know if **Python** is installed or not open the terminal and execute

`python --version`

the output should look like

`Python 3.11.5`

# How to execute the tests #

If you pulled this repository you have to change the working directory. In order to check where you are open the terminal and enter

`echo $PWD`

it should look like

`<HOME_DIRECTORY>/csd_kata_skeleton`

Switch to the *Python* subdirectory using

`cd python`

and your working directory should look like

`<HOME_DIRECTORY>/csd_kata_skeleton/python`

Now you can execute the tests using

`python -m unittest kata_test.py`

leading to a result like

```
======================================================================
FAIL: test_kata (kata_test.TestKata.test_kata)
----------------------------------------------------------------------
Traceback (most recent call last):
File "/Users/bjornjensen/Development/csd_kata_skeleton/python/kata_test.py", line 11, in test_kata
self.assertTrue(False)
AssertionError: False is not true

----------------------------------------------------------------------
Ran 1 test in 0.000s

FAILED (failures=1)
```