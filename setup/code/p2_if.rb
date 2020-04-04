puts "If-else statment, grade calculator."
grade = gets.chomp.to_i
# grade = Integer(grade)
if (grade < 60 )
	puts "fail"
elsif (grade < 70)
	puts "grade D"
elsif (grade < 80)
	puts "grade C"
elsif (grade < 90)
	puts "grade B"
else 
	puts "grade A"
end 
