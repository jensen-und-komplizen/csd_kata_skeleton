# What do you need? #
In order to be able to execute your test you need **[PHP](https://www.php.net/)** in Version >= 8.1. In addition to **PHP** you need to have **[composer](https://getcomposer.org/)** (PHP Package Manager) installed. If you don't know 
if **PHP** and **composer** are installed or not open the terminal and execute

`php -v`

the output should look like

```
PHP 8.1.2-1ubuntu2.14 (cli) (built: Aug 18 2023 11:41:11) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.2, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.2-1ubuntu2.14, Copyright (c), by Zend Technologies
```

if **PHP** is installed. Execute 

`composer -V`

the output should look like

`Composer version 2.7.2 2024-03-11 17:12:18`

if **composer** is installed. If one or the other is not installed visit the related websites and follow the instructions to get **PHP** and **composer** installed on your system.

# How to execute the tests #

If you pulled this repository you have to change the working directory. In order to check where you are open the terminal and enter

`echo $PWD`

it should look like

`<HOME_DIRECTORY>/csd_kata_skeleton`

Switch to the *PHP* subdirectory using

`cd php`

and your working directory should look like

`<SOME_DIRECTORY>/csd_kata_skeleton/php`

In our context we're using **[PHPUnit](https://phpunit.de/index.html)**. Remember that you need to install **PHPUnit** first in order to be able to execute the tests.

`composer install`

After that you can execute the tests using

`bin/phpunit`

which should lead to a result like

```
PHPUnit 10.5.16 by Sebastian Bergmann and contributors.

Runtime:       PHP 8.3.3
Configuration: /Users/oliver/PhpstormProjects/kata_skeleton/php/phpunit.xml.dist

F                                                                   1 / 1 (100%)

Time: 00:00.004, Memory: 8.00 MB

There was 1 failure:

1) KataTest::testFoo
Failed asserting that two strings are equal.
--- Expected
+++ Actual
@@ @@
-'bar'
+'foo'

/Users/oliver/PhpstormProjects/kata_skeleton/php/tests/KataTest.php:12

FAILURES!
Tests: 1, Assertions: 1, Failures: 1.
```
