# The Ada Weekend Warrior Exercises
These exercises lean on [Test-Driven Development (TDD)](https://en.wikipedia.org/wiki/Test-driven_development), but they're not an exact match. For a more thorough introduction and explanation of TDD (using Minitest in Ruby), see the ["Intro to TDD" over at JumpstartLab](http://tutorials.jumpstartlab.com/topics/testing/intro-to-tdd.html).

In these exercises, you will be provided a set of tests (instead of having to write your own). Your job is to read the tests, discern what they're asking you to do, then write the code that makes each test pass, one by one. The process should break down like this:

1. Run the test suite. It's written using the Minitest framework, and can be
run with `$ ruby hello_world_test.rb`.
1. Read the error. Think about the error. Then make the _smallest change possible_ to the code to fix the error (and just that one error).
1. Run the tests again. You may get a new error. If you do, rinse and repeat. Think. Make the smallest change to fix that error. Run the tests again.
1. When the first test passes, enable the next test in the suite by removing the `skip` in the test code.
1. Wash, Rinse, Repeat: _Delete one `skip` at a time_, and make each test pass before you move to the next one.

__Remember: the goal is to write code that is expressive and readable.__

## Running the Tests
All the tests for these exercises are written using the [_Minitest_ gem](https://github.com/seattlerb/minitest). This gem is provided in by default in newer distributions of ruby, but you can install it manually using `$ gem install minitest` if it doesn't appear in the output of `$ gem list`.

If you would like color output, you can `require 'minitest/pride'` in the test file. I may have done this in some of the test files already. ^_^

## Understanding Test Failures
Failing tests (errors) look something like:

    # Running:

    ESSS

    Finished in 0.001539s, 2599.0903 runs/s, 0.0000 assertions/s.

    1) Error:
    HelloWorldTest#test_no_name:
    NameError: uninitialized constant HelloWorldTest::HelloWorld
      hello-world/hello_world_test.rb:5:in `test_no_name'

The letters `ESSS` show that there are four tests altogether,
that one of them has an error (`E`), and that three of them are skipped (`S`). The goal is to have four passing tests. Passing tests are shown as dots (`.`).

__The tests are run in a random order, which will result in the letters to display in random order as well.__

An _error_  (`E`) means that Ruby cannot execute the code because of things like missing
files, syntax errors, or referring to things that don't exist.

A _test failure_ (`F`) is when the program/code runs fine, but the test receives an outcome different from what it was told to expect.

### Credits & License
Much of the content of this repo comes from the amazing [Exercism](http://exercism.io/) project. [I](https://github.com/jnf)'ve adapted and modified language and exercises found there for the Ada classroom. All content in this repository is relased under the [GNU Affero General Public License](http://www.gnu.org/licenses/agpl-3.0.en.html). Copyright &copy; 2016, [Ada Developers Academy](http://adadevelopersacademy.org/).






