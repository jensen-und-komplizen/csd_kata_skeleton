# What do you need? #
In order to be able to execute your test you need **[Node.js](https://nodejs.org)** in Version 21.x. In addition to **Node.js** you need to have **[npm](https://www.npmjs.com/)** (Node Package Manager) installed. If you don't know 
If you don't know if **Node.js** and **npm** are installed or not open the terminal and execute

`node -v`

the output should look like

`v21.x`

if **Node.js** is installed. Execute 

`npm -v`

the output should look like

`10.x`

if **npm** is installed. If one or the other is not installed visit the related websites and follow the instructions to get **Node.js** and **npm** installed on your system.

# How to execute the tests #

If you pulled this repository you have to change the working directory. In order to check where you are open the terminal and enter

`echo $PWD`

it should look like

`<HOME_DIRECTORY>/csd_kata_skeleton`

Switch to the *JavaScript* subdirectory using

`cd javascript`

and your working directory should look like

`<SOME_DIRECTORY>/csd_kata_skeleton/javascript`

In our context we're using **[jest](https://jestjs.io/)**. Remember that you need to install **jest** first in order to be able to execute the tests.

You can execute the tests using

`jest`

which should lead to a result like

```
 FAIL  ./kata.test.js
  ✕ Something should be true (2 ms)

  ● Something should be true

    expect(received).toBe(expected) // Object.is equality

    Expected: true
    Received: false

      4 |
      5 | test("Something should be true", () => {
    > 6 |     expect(something()).toBe(true);
        |                         ^
      7 | });
      8 |

      at Object.toBe (kata.test.js:6:25)

Test Suites: 1 failed, 1 total
Tests:       1 failed, 1 total
Snapshots:   0 total
Time:        0.116 s, estimated 1 s
Ran all test suites.
```
