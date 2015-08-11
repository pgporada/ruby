#!/usr/bin/ruby
# WHO:   PGP
# WHAT:  This script will check if the string you input is a palindrome

# Take the first argument as the input
arg = ARGV[0]
chars = arg.split(//)

# Get scalar length of the array
size = chars.length

# Divide the number and round up to find where our search should stop
half = (size/2.to_f).ceil

for i in 0..half
    if chars[i].downcase != chars[-i-1].downcase
        puts "Your string ==> '#{arg}' <== is NOT a palindrome :("
        exit
    end
end

puts "Your string ==> '#{arg}' <== is a palindrome! :)"
