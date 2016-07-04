# This is a template for dummyproofing your functions
# based primararly on https://github.com/jtleek/rpackages
#######################
# i expect that you use testthat
#
# Goals ####
# That your error messages catch what they should
# That your outputs are what you expect them to be
# That you get reasonable answers for reasonable inputs
# When you know what the answer should be - you get it
# self contained (don't rely on code outside, except the function you are testing)
# isolated: don't rely on other testcases  (although I do declare at top of script and test it further on)
# unique: test what has not been tested
# useful: focus on edge cases and inputs where the function may behave erratically or wildly
# Mock out all external services and state 
# Don’t unit-test configuration settings
# Name your unit tests clearly and consistently
# When you find a bug, first write a test for it and then fix the bug.

# examples #####

## input proofing for every function
context("input proofing")
# correct values
test_that("correct input of "function" displays correct result", {
  # expect_equal(  "your function bla bla bla" , "answer") # should be identical
})
# wrong input types: null, numbered, character, factor, data frame, matrix, list, function # choose what makes sense
test_that("wrong imput values throw informative error" ,{
  #expect_error(object, regexp = ) 
})

## output proofing
test_that("output is of the type expected" , {
  expect_type(object, type)
})
# results  what should be
### add standard cases, most expected input types 

### edge cases
# infinity / zero / 1 / 1000 times more then usual

### random inputs
#use random generator


###  Tip:  try to break your functions: enormous files, inf and -inf as input, Null or NA as input. 
###  numeric vs integer, vs numeric but in character coding. etc. 
