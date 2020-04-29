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

    def override()
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

# This code show simple exmaple of Ruby top-level.
class Toplevel
    def example
        "This is a code For top-level."
    end
end

p self.class
p Toplevel.new.send :example