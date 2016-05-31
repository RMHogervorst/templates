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

# results  what should be

# edge cases

# random inputs


###  Tip:  try to break your functions: enormous files, inf and -inf as input, Null or NA as input. 
###  numeric vs integer, vs numeric but in character coding. etc. 
