type_Int = 10
type_Float = 9.0
type_Str = "It's #{type_Float} am."
puts "#{type_Str}? No, it's #{type_Int} pm."
puts "Is it 5 + 3 < 7? #{5 + 3 < 7}"
title_arr =  "Here are some elements will add in array: "
array_1 = "Dog "
array_2 = "Cat "
array_3 = "Eagle "
array_4 = "Tiger "
array_5 = "Koala "
array_6 = "Panda "
stuff_arr = [array_1,array_2,array_3,array_4,array_5,array_6]


puts "A small-ish program."

print "Now Type a Number (Integer): "
get_int = gets.chomp.to_i
puts "You input #{get_int} is a integer type.\n"

print "Type a Number (Float): "
get_flo = gets.chomp.to_f
puts "You input #{get_flo} is a float type.\n"

print "Type a Sentence (String): "
get_str = gets.chomp
puts "You input #{get_str} is a string type.\n"

print "Answer the question: 5 + 3 is less than 7? (yes/no)? "
get_str1 = gets.chomp
puts "Your answer is #{get_str1 == "yes"}. This question perform a Boolean type\n"

puts title_arr + array_1 + array_2 + array_3 + array_4 + array_5 + array_6
print "But does not have enough elements need one more animal: "
array_7 = gets.chomp
puts "Adding: #{array_7}"
stuff_arr.push(array_7)
puts "Here we go: #{stuff_arr}"

puts "Now show the error type."
begin
    type_strmore = '*' * 10
    puts type_strmore
    type_strmore = '10'.freeze
    type_strmore << '56789'
    puts type_strmore
    
rescue RuntimeError => e
    print_exception(e, true)
rescue => e
    print_exception(e, false)
end


type_comp = "*" + 10.0
puts type_comp


