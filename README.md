# Functional (Style) Programming

The goal of this exercise is to "play with" functional programming techniques
in Ruby. The most fundamental concept of functional programming is that
functions are "pure", that is, they do not modify their arguments. Taken more
extensively, mutations like modifying temporary variables are avoided by
calling other (or recursive) functions with different parameters.

This is counter to how much procedural and object-oriented code is written, yet
the basic approach is valid and useful. The resulting functions tend to be
smaller and do not have changing state, which can make understanding the result
for given parameters easier.

## The Inspector

To explore some of these techniques, the included test suite covers a few basic
operations on lists of integers. You are asked to implement a class named
`Inspector`.

The `Inspector` class should have a no-argument constructor and five instance
methods taking an array of integers as the only argument:

 * `sum`: sum all of the integers supplied; zero if empty
 * `max`: find the maximum value in the array; zero if empty
 * `square`: return a array of the same size, with each number squared
 * `reverse`: return the array in reverse order
 * `sort`: return the array, sorted in ascending order


**Please do not use convenience methods from Array or Enumerable. Also, try not
to make any mutations.**

