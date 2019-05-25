#Use the tidyverse style guide to name a function. Name it as a verb
#Assign the name to a funcation call function(){}

sum_two_numbers <- function(number_1, number_2){
  sum_of_two = number_1 + number_2
  sum_of_two
}


sum_two_numbers(103,27)

###Question 1 a
difference_two_numbers <- function(no1,no2){
  difference_numbers = no1 - no2
  abs(difference_numbers)
}

difference_two_numbers(4,2)

#Question 1 b

sum_function <- function(...){
  sum(...)
}

sum_function(1,2,3)

#list contains any types of datatypes, while a vector contains one datatype
#matrix takes only one datatype while a dataframe takes multiple datatypes


get_distribution <- function(n_sims, ...){
  x <- 1:n_sims
  
  x_means <-  purrr::map_dbl(x, function(x){
    
    random_numbers <- rbinom(1000,1,0.5)
    
    mean(random_numbers)
      })
  
    hist(x_means, ...)
  
}
get_distribution(10000)



a <- 1:10
tracemem(a)

b <- a
tracemem(b)

b[1] <- 1


search()

ls()

#clear ls()
rm(list = ls())

add_to_secret_number <- function(y){
  my_secret_number <-  100
  my_sum = my_secret_number + y
  my_sum
}
ls()

#assign my_secret_number to a global enivironment


add_to_secret_number <- function(y){
  my_secret_number <<-  100
  my_sum = my_secret_number + y
  my_sum
}
ls()

#because of lazy evaluation, functions are only evaluauted after they have been run
#read up on colin fays blog about lazyeval

#use return() if there is a nested return()

#lexical scoping shows where to find a value


search()
#lexical scoping

get_power <- function(expo){
  
  power <-  function(base_number){
    base_number^expo
  }
 power 
}


#define cube function
get_cube <- get_power(3)

get_cube(7)


#be careful when nesting functions

#github link -> davidclarence/satRday-functions


  
  
  