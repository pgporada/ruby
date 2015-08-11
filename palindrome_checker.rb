#!/usr/bin/ruby
# WHO:   PGP
# WHAT:  This script will check if the string you input is a palindrome

def usage
    puts "Usage:"
    puts "Enter a string as your first and only argument"
    exit
end

def check_palindrome(uarg)
    chars = uarg.split(//)

    # Get scalar length of the array
    size = chars.length

    # Divide the number and round up to find where our search should stop
    half = (size/2.to_f).ceil

    for i in 0..half
        if chars[i].downcase != chars[-i-1].downcase
            puts "Your string ==> '#{uarg}' <== is NOT a palindrome :("
            exit
        end
    end
    puts "Your string ==> '#{uarg}' <== is a palindrome! :)"
end

if ARGV.empty? || ARGV.length > 1
    usage
    exit
end

arg = ARGV[0]
check_palindrome(arg)
