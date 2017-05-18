
test that runs differently based on when you call it.
When you click test your package in Rstudio,  or the hotkeys.

Test_that sets the directory holding the test file as the current working directory.
that is tests/testthat/

devtools::check() creates a new copy of your package and sets the wd in pacakgename.Rcheck/tests/testthat

ctrl shift E (or `check` )  & ctr shift T (`test`) 
set the wd in: badgecreatr.Rcheck/tests/testthat
