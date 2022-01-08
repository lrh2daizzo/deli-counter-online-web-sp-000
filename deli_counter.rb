# Write your code here.
require 'pry'

def line(line)
    if line.empty?
       puts  "The line is currently empty."
    else
        current_line = "The line is currently:"

        line.each.with_index do |name, i| 
            current_line << " #{i+1}. #{name}"
        end

        puts current_line
    end
end

def take_a_number(line, name)
    if line.empty?
        line << name 
        puts "Welcome, #{name}. You are number 1 in line."
    else
        line << name
        puts "Welcome, #{name}. You are number #{line.size} in line."
    end
end

def now_serving(line)
    if line.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{line.first}."
        line.shift
    end
end
