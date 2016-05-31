# Integration testing or regression testing is like unit testing but 
# this time you test all the components in one system. 
# This is not always possible but you should at least try to combine multiple components
# that you wrote and check if the expected outcome is correct. 
# 
# integration with dependencies
# list what you use in other packages and see if those functions still work in new versions of package.
# f.i. readxl::read_excel("location", sheets = "name")
context("external dependencies")
test_that("readxl::read_xl works", {
  #readxl::read_excel("location", sheets = "name") # adjust so that it works
})
test_that("readxl gives error when wrong location", {
  expect_error(readxl::read_excel("X://inst/excelfile.xlsx", sheets = "namee") # correct location, incorrect sheetname
  expect_error(readxl::read_excel("X://inst/excelfile.xlsx", sheets = "namee") # incoorect location, correct sheetname 
})



## integration of multiple tools in your package
# whole pipeline of ordinary use

# whole pipleine with popular packages (susch as dplyr and ggplot2 if appropriate)
