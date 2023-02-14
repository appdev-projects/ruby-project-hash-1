# Write a program that:
#   Asks the user for an Integer, then checks to see if that integer is
#   a value of any of the keys in sample_hash.
#   If you find the number, print out "100 is under the key: a."
#   If you don't find the number print out "Could not find the integer 100"
#
# Example (`4` is the input):
#
#   "Enter an integer:"
#   4
#   "Could not find the integer 4"


sample_hash = {:a => 100, :b => 200, :c => 300, :d => 400, :e => rand(200), :f => 600, :g => 0 }

p "Enter an integer to find:"


# ~~~~~ Specs (make it do these things) ~~~~~
#
# find_value.rb prints Hash of 'Could not find the integer 4', when input is '4' 
# 
# find_value.rb prints Hash of '100 is under the key: a.', when input is '100' 
# 
# find_value.rb prints Hash of '22 is under the key: e.', when input is '22' 
# 
# find_value.rb prints Hash of '32 is under the key: e.', when input is '32' 
#
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~