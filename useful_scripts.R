### useful scripts/functions for R.

## see all the loaded packages. 
result <- devtools::session_info()$packages 
dplyr::filter(result, `*` == "*")
# or:
devtools::session_info()$packages  %>% filter( `*` == "*")

#' Display the Names of Data Frame That are NOT in Second One.
#'
#' A very good description
#' @param df1 the first data frame
#' @param df2 the second data frame
#'
names_df1_not_in_df2 <- function(df1, df2) {
        names(df1)[!names(df1) %in% names(df2)]
}


#' count the number of missing values in column
#'
#'
#' @param df a data frame
#' @param var a columnname
count_NAs <- function(df, var) {sum(is.na(data.frame(df)[,var]))}

count_missings<-function(vec) sum(is.na(vec))

#' Count number of unique values in a column
#'
count_unique_values <- function(df, var) {unique(data.frame(df)[,var])}

#' Turn text date to date format
#'
#' This function works on vector of character values
#' It should resolve issues such as / (slash) or - (dash)
#' between parts of a date notation.
#' shortened versions of a date
#' and turns empty strings to NA
#' This function accepts dates such as:
#' 30-12-90, 18-12-1990, 12/29/19, etc.
#' it cannot handle shortened dates after 2000 e.g.
#' 13-12-01.
#' Because i'm to lazy to change that for now.
#'
#' @section usage
#' df$realdate <- resolve_date(df$uglyyear, "%m-%d-%Y")
#'
#' @section internals
#' This is a function with some substitutions
#' and finally as.Date function call
resolve_date <- function(vector, format= "%d-%m-%Y"){
    vector <- gsub("/", "-", vector)
    vector <- gsub("(.*)-(..)$", "\\1-19\\2", vector)
    vector[vector == ""] <- NA
    vector <- as.Date(vector, format = format)
    vector
}


# copied from
# https://github.com/RMHogervorst/summarize_dat/blob/dev/R/plotting_routines.R
# I like this plot
normal_plot_numeric <- function(numeric_var){
        name <- deparse(substitute(numeric_var))
        # if there is a dollarsign
        # substitute if at least one character followed by dollarsign
        # with nothing. (leaving only varname)
        name <- ifelse(grepl("\\$", name),
                       gsub("^[[:graph:]]{1,}\\$", "", name),
                       name)
        testresult <- numeric_function(numeric_var)
        plot(testresult$density, main = paste0("Density of variable: ", name))
        #max(testresult$density$y)
        points(x = testresult$median,
               y = max(testresult$density$y)/2,
               pch = 3,
               col = "blue")
        text(x = testresult$median,
             y = max(testresult$density$y)/1.5,
             label = "median")
        points(x = testresult$min,
               y = 0,
               pch = 25,
               col = "red")
        points(x = testresult$max,
               y = 0,
               pch = 25,
               col = "red")
        height<- max(testresult$density$y)/3
        leftx <- testresult$mean - testresult$sd
        rightx <-testresult$mean + testresult$sd
        lines(x = c(leftx, rightx), y = c(height, height))
        points(testresult$mean, y = height, pch = 13, col = "green")
        points(x = c(leftx, rightx), y = c(height, height), pch = 4)
        text(testresult$mean, y = max(testresult$density$y)/4,
             label = "M + sd")
}


numeric_function <- function(var){
        numeric_things <- list(
                # display densityline with minimum, maximum and median values (like sparkline).
                density = density(var, na.rm = TRUE),
                # also display mean and sd values
                mean = mean(var, na.rm = TRUE), ##
                median = median(var, na.rm = TRUE),
                min = min(var, na.rm = TRUE),
                max = max(var, na.rm = TRUE),
                sd = sd(var, na.rm = TRUE),
                normality = shapiro.test(var)
                # perhaps normality check?
        )
        numeric_things
}

#' Paste formula based on arbitrary number of arguments
#'
#' This function is useful for when you want to create a formula based on
#' several vectors. It is short (you can put it in a call without filling the
#' screen) and it takes an arbitrary number of arguments.
#' @param lhs The part before the tilde "~", that what you want to predict
#' @param ... any number of vectors or text.
#'
#' @return a pasted formula of the form lhs~a+b+c etc
#' @export
#'
#' @examples
#' a <- c("bla", "tadaah", "unicorn")
#' b <- c("foo", "bar")
#' pasteformula("endpoint", a,b)
paste_formula <- function(lhs, ...){
        rhs <- c(...)
        paste0(lhs,"~",paste(rhs,collapse = "+"))
}
# test: paste_form("GPA", d_soc_demografics,d_disc_char)
