## Exercise 3

Write names of all US states in UPPERCASE and lowercase to a file. Write how to do this without typing all 50 names manually. Separate code from input and from output.


print (state.name) #R currently contains the following "state" data sets. character vector giving the full state names

Upper <- toupper(state.name) # This will convert US States to uppercase
Upper

Lower <- tolower(state.name) # This will convert US States to Lowercase
Lower 

US_States <- data.frame(Upper_Case <- (Upper), Lower_Case <- (Lower)) # This is data frame to create two dimension data for upper and lower case

Print(US_States) # Data frame for 50 US States which has both upper and lower case

write.table(US_States, file = "my_data.txt", sep = ",")