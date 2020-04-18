# tiny program
def giao
    puts "Here is function. Giao!"
end

class Giao
    puts "Here is class."
    giao
end


# small-ish program
class Get_random
    def rando
        return rand(1..100)
    end 
end
class Guessing_Game
    changes = 6
    new_rand = Get_random.new
    puts "small-ish program."
    puts "Hello! It is a guessing game. What is your name?"
    get_name = gets.chomp
    ran_number = new_rand.rando

    puts "Well, #{get_name}, I am thinking of a number between 1 and 100."

while changes > 0
    print "Take a guess (You have #{changes} chances left): "
    guess = gets.chomp.to_i

    changes -= 1

    if guess < ran_number
        puts "Your guess is too low."
    end
    if guess > ran_number
        puts "Your guess is too high."
    end
    if guess == ran_number
        break
    end
end
if guess == ran_number
    puts "Good job, #{get_name}! You guessed my number in #{6 - changes} guesses!"
else
    puts "Nope. The number I was thinking of was #{ran_number}."
end
end