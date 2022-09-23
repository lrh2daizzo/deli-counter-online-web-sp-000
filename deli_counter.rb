# Write your code here.
require 'pry'

def line(line)
    if line.empty?
       puts  "The line is currently empty."
    else
        current_line = "The line is currently:"
        line.each_with_index do |e,i|
            current_line << " #{i+1}. #{e}"
        end
        puts current_line
    end
end

def take_a_number(katz_deli, name)
    katz_deli << name
    puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
end

def now_serving(katz_deli)
    if katz_deli.empty? 
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{katz_deli.first}."
        katz_deli.shift
        katz_deli
    end
end
