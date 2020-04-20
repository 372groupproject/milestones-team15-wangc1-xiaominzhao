# Program: GuessingWord.rb
# Ahuthors: Chen Wang & Xiaomin Zhao
# Description: This is a simple word guessing game with Ruby 

# Custom classes for game
class Game 
    def def_word
        list_of_word = ['abandon', 'bacteria', 'camera', 'crush', 'deadly', 
        'delay', 'efficient', 'favourable', 'generation', 'incline', 'league',
        'manufacture', 'midnight', 'nitrogen', 'passion', 'reaction', 'receiver',
        'satellite', 'turbine', 'universal', 'vertical', 'widen', 'vacuum',
         'vigorous', 'wander', 'welfare', 'worship', 'youth', 'yawn', 'wound']
        return list_of_word[rand(32)]
    end
    
    def game_info
        puts "Welcome to Word Guessing Game."
        puts "You need guess a word in 10 times"
        print "Are you ready?[y/n]: "
    end

    def read_play
        puts "Give you guess:"
        return gets.chomp
    end
    def end_game
        puts "Bye!"
    end
end

# Begin the game
new_game = Game.new
times = 10
new_game.game_info
answer = gets.chomp

if answer == "y"
    
    ans_word = new_game.def_word
    while times > 0
        get_word = new_game.read_play
        if get_word == ans_word
            break
        else
            puts "Wrong! keep thinking "
            
        end
        times-=1
    end
    if times <= 0
        puts "Nope! the word is #{ans_word}"
    else
        puts "Genius, you got it, the word is #{ans_word}"
    end
    new_game.end_game

else
    new_game.end_game
end
