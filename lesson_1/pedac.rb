## Understand the Problem
  ## Explicit - First row is [2], second is [3, 4] etc 
  ## Implicit - How many rows are there? 
  ## Input - Integer representing a row
  ## Output - Integer that is the sum of row 
## Examples/Test cases
  ## Row 2 = [3,4] = 7
## Data Structures 
  ## Input - Integer corresponds to index of nested array
  ## Output - Sum of array elements at the input index

## Given an integer, construct nested array with integer number of
## indexes, which consist of consecutive integers, then reutrn the 
## last indexes sum of elements 

## Get input of integer
## construct nested array of that many arrays
  ## Iterate or loop Integer number of times << empty array
  ## for each iteration, add additional number
  ## Need to create Large array called array of rows
  ## Need to create array that is the current row 
  ## need to create counter that keeps track of row and number of elements
  
## select last index
## add index together 
## output that index


require "../../prompt_messages.rb"

print_in_box ("Please Enter the number of rows")
number_of_rows = gets.chomp.to_i

array_of_rows = [ ]
current_row = [ ]

(1..number_of_rows).each do |n| 
  first_number = 2
  n.times do
    current_row << first_number
    first_number += 1
  end
  array_of_rows << current_row
  current_row = [ ]
end

print_in_box ("The sum of #{array_of_rows[number_of_rows - 1]} is #{array_of_rows.last.sum}")


  




