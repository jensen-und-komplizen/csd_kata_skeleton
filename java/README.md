# What do you need? #
There are several things you need in order to be able to run the Java test skeleton. As you are going to "develop" some stuff in Java you need to install the **[Java Development Kit (JDK)](https://openjdk.org/)** and **[Maven](https://maven.apache.org/)** as a "build tool".

We recommend to use **[SDKMAN](https://sdkman.io/)** to install **Java** and **Maven**.

If you don't know if **Java** and **Maven** are installed or not open the terminal and execute

`java -version`

the output should look like

```
openjdk version "21.0.1" 2023-10-17 LTS
OpenJDK Runtime Environment Temurin-21.0.1+12 (build 21.0.1+12-LTS)
OpenJDK 64-Bit Server VM Temurin-21.0.1+12 (build 21.0.1+12-LTS, mixed mode)
```

if **Java** is installed. In this case we use the **OpenJDK**. Execute 

`mvn -v`

the output should look like

```
Apache Maven 3.9.5 (57804ffe001d7215b5e7bcb531cf83df38f93546)
Maven home: <SOME_DIRECTORY>/.sdkman/candidates/maven/current
Java version: 21.0.1, vendor: Eclipse Adoptium, runtime: <SOME_DIRECTORY>/.sdkman/candidates/java/21.0.1-tem
Default locale: de_DE, platform encoding: UTF-8
OS name: "mac os x", version: "14.1", arch: "aarch64", family: "mac"

```

if **Maven** is installed. If one or the other is not installed visit the related websites mentioned above and follow the instructions to get **Java** and **Maven** installed on your system.

# How to execute the tests #

If you pulled this repository you have to change the working directory. In order to check where you are open the terminal and enter

`echo $PWD`

it should look like

`<HOME_DIRECTORY>/csd_kata_skeleton`

Switch to the *Java* subdirectory using

`cd java`

and your working directory should look like

`<SOME_DIRECTORY>/csd_kata_skeleton/java`

Now we can execute the tests. In our context we're **[junit](https://junit.org/junit5/)**. Remember that you need to install **Java** and **Maven** first in order to be able to execute the tests.

You can execute the tests using

`mvn test`

which should lead to a result like

```
[INFO] Scanning for projects...
[INFO] 
[INFO] -----------------------< org.example:kata-java >------------------------
[INFO] Building kata-java 1.0-SNAPSHOT
[INFO]   from pom.xml
[INFO] --------------------------------[ jar ]---------------------------------
[INFO] 
[INFO] --- resources:3.3.1:resources (default-resources) @ kata-java ---
[WARNING] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
[INFO] skip non existing resourceDirectory <SOME_DIRECTORY>/csd_kata_skeleton/java/src/main/resources
[INFO] 
[INFO] --- compiler:3.11.0:compile (default-compile) @ kata-java ---
[INFO] No sources to compile
[INFO] 
[INFO] --- resources:3.3.1:testResources (default-testResources) @ kata-java ---
[WARNING] Using platform encoding (UTF-8 actually) to copy filtered resources, i.e. build is platform dependent!
[INFO] skip non existing resourceDirectory <SOME_DIRECTORY>/csd_kata_skeleton/java/src/test/resources
[INFO] 
[INFO] --- compiler:3.11.0:testCompile (default-testCompile) @ kata-java ---
[INFO] Nothing to compile - all classes are up to date
[INFO] 
[INFO] --- surefire:3.1.2:test (default-test) @ kata-java ---
[INFO] Using auto detected provider org.apache.maven.surefire.junitplatform.JUnitPlatformProvider
[INFO] 
[INFO] -------------------------------------------------------
[INFO]  T E S T S
[INFO] -------------------------------------------------------
[INFO] Running KataTest
[ERROR] Tests run: 3, Failures: 2, Errors: 0, Skipped: 0, Time elapsed: 0.062 s <<< FAILURE! -- in KataTest
[ERROR] KataTest.exampleTest -- Time elapsed: 0.015 s <<< FAILURE!
[ERROR] KataTest.anotherExampleTest(boolean)[1] -- Time elapsed: 0.015 s <<< FAILURE!
[INFO] 
[INFO] Results:
[INFO] 
[ERROR] Failures: 
[ERROR]   KataTest.anotherExampleTest:17
[ERROR]   KataTest.exampleTest:11
[INFO] 
[ERROR] Tests run: 3, Failures: 2, Errors: 0, Skipped: 0
[INFO] 
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time:  0.998 s
[INFO] Finished at: 2023-11-15T09:35:37+01:00
[INFO] ------------------------------------------------------------------------
```
        