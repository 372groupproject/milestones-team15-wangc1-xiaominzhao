grade = gets
grade = Integer(grade)

case grade
when 0..59.99
	puts "fail"
when 60 ..69.99
	puts "grade D"
when 70..79.99
	puts "grade C"
when 80..89.99
	puts "grade B"
else
	puts "grade A"
end