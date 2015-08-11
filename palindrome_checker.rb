#!/usr/bin/ruby
# WHO:   PGP
# WHAT:  This script will check if the string you input is a palindrome

def usage
    puts "Usage:"
    puts "Enter a string as your argument"
    puts "Example:"
    puts "#{$0} \"No 'x' in Nixon\""
    exit
end

def check_palindrome(uarg)
    # Strip non-alphanumeric chars as we want to be able to handle a palindromic sentence 
    tmp = uarg.gsub(/[^0-9a-z]/i, '') 
    chars = tmp.delete(' ').split(//)

    # Get scalar length of the array
    size = chars.length
    if size == 1
        puts "Your string ==> '#{uarg}' <== is a palindrome! :)"
        exit
    end

    # Divide the number and round up to find where our search should stop
    half = (size/2.to_f).ceil

    for i in 0..half
        if chars[i].to_s.downcase != chars[-i-1].to_s.downcase
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
