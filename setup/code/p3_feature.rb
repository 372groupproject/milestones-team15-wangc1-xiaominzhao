type_Int = 10
type_Float = 9.0
type_Str = "It's #{type_Float} am."
puts "#{type_Str}? No, it's #{type_Int} pm."
puts "Is it 5 + 3 < 7? #{5 + 3 < 7}"

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