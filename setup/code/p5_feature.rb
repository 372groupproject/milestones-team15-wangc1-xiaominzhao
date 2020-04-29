# This code show Ruby has a block to close the File in a single location 
# which can minimizing the error but not complex like Java. When java 
# open file it need use try block wrap scanner thus it can be closed 

# A example of ruby block
def open_file(input)
    File.open(input, "r") do |file1|
        file1.each_line {
          |line| puts line 
        }
    end
end

puts "Here is a example for block of Ruby, it open and puts contant of file: Makefile."
open_file("Makefile")
puts "\n"

# A example code to show a ruby lexical feature.
puts "Here is a example code to show a ruby lexical feature check charactor."
def char_check
    puts "We will check charactor \'a\' that if in string \"Click here to join Zoom Meeting\"." 
    if 'a' !~ /[Click here to join Zoom Meeting]/i
        return puts "Not in string."
    else
        return puts "In string."
    end
end
char_check
puts "\n"

# A example code to show a ruby lexical feature.
puts "Here is a example code to show a ruby lexical feature, if-statement and break in iterate."
puts "if-statement initeration 10 times but break when 5"
def iterate_con
    times = 0
    for times in 1..10
        if times > 5 then
            break
        end
        puts times
    end
end
iterate_con
puts "\n"

# This code show Ruby Inheritance
class Parent
    def for_super()
        puts "Parent super"
    end

    def for_override()
        puts "Parent override."
    end
  
    def par_only()
        puts "Parent only"
    end

    def adult_only()
        puts "Adult"
    end
end
  
class Child < Parent
    def for_super()
        puts "Before parent super"
        super()
        puts "After parent super"
    end

    def for_override()
      puts "Child override."
    end
end

puts "This is a code for Ruby Inheritance"
par = Parent.new()
son = Child.new()
 
par.for_override()
son.for_override()
  
par.for_super()
son.for_super()

par.par_only()
son.par_only()

par.adult_only()
son.adult_only()
puts "\n"
puts "\n"

# This code show simple exmaple of Ruby top-level.
class Toplevel
    def example
        "This is a code For top-level."
    end
end

p self.class
p Toplevel.new.send :example
