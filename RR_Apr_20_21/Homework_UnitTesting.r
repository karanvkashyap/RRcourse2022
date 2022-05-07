install.packages("testthat")

#Write a function in your preferred language 
#which allows the user to convert the temperature 
#in Fahrenheit degrees to Celsius degrees or Kelvins, 
#depending on target parameter. The function should raise 
#an error for any other temperature scale.

Fahr_to_Celsius <- function(fahr){
  return((fahr - 32)*(5/9))
}

Fahr_to_Kelvin <- function(fahr){
  return(((fahr - 32)*(5/9))+273.15)
}

#Check whether 50, 70, and 90 degrees Fahrenheit are converted correctly to Celsius.

testthat::test_that('Fahr_to_Celsius', {
  testthat::expect_equal(Fahr_to_Celsius(50),10)
  testthat::expect_equal(Fahr_to_Celsius(70.0),21.111)
  testthat::expect_equal(Fahr_to_Celsius(90.0),32.2)
})

#Check whether -500, 0, and 1000 degrees Fahrenheit are converted correctly to Kelvin. (hint: should they all be?)
testthat::test_that('Fahr_to_Kelvin', {
  testthat::expect_equal(Fahr_to_Kelvin(-500),-22.4056)
  testthat::expect_equal(Fahr_to_Kelvin(0),255.372)
  testthat::expect_equal(Fahr_to_Kelvin(1000),810.928)
})

