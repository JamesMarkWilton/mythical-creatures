# Mythical Creatures

A collection of simple exercises to practice Ruby and TDD

## Suggested Order

* `unicorn_test.rb`  DONE!
* `vampire_test.rb`  DONE!
* `dragon_test.rb`   DONE!
* `hobbit_test.rb`   DONE!
* `pirate_test.rb`   DONE!
* `wizard_test.rb`   DONE!
* `medusa_test.rb`   DONE! But the statues_first_name method could use osme work
* `werewolf_test.rb` DONE!
* `centaur_test.rb`  DONE!

## Extra Challenges

### Testing with RSpec

For the majority of the class we use minitest because there's so little to
learn about the API. But a huge part of the Ruby community favors the
expressiveness of RSpec.

* [You can check out one of our tutorials about RSpec](http://tutorials.jumpstartlab.com/topics/internal_testing/rspec_and_bdd.html)
or [this blog post](http://gregelizondo.github.io/2014/03/03/getting-started-with-rspec-and-unit-testing.html)
* Pick three of the creatures and implement RSpec tests for each
* For each creature, add at least three additional tests / pieces of functionality
* Submit pull requests adding the RSpec tests to the repository

### The Dreaded `if` Statement

Can you complete implementations of each of the creatures without using `if`
statements? Think about how removing them affects your code. Remember that
a `case` is just a different form of `if`, so don't use it.

### Imagine Two Creatures

Can you add two new creatures to the repository? How about a Hydra? Add minitest
tests exercising some of the following concepts:

* Passing data into `initialize`
* Using methods to change the internal state of an instance
* Using methods to query the internal state of an instance
* Functionality that necessitates the internal use of an Array
