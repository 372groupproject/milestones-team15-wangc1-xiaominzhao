puts "Please enter your weight in Kilogram"
weight = gets
weight = Float (weight)
puts "Please enter your height in meter"
height = gets
height = Float (height)

number = weight / (height * height)
number = number.round(1)

puts "Your BMI is #{number}"

if (number <= 18.5)
	puts "your BMI range is under underweight"
elsif (number <= 24.9)
	puts "your BMI range is under normal weight"
elsif (number <= 29.9)
	puts "your BMI range is under overweight"
else 
	puts "your BMI range is under obesity"
end 


			

