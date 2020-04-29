# Program: GuessingWord.rb
# Ahuthors: Chen Wang & Xiaomin Zhao
# Description: This is a simple word guessing game with Ruby 


# Custom classes for game

# Class game 
class Game 
    # This function uesd to create a words list and return a random word.
    def def_word
        list_of_word = ['abandon', 'bacteria', 'camera', 'crush', 'deadly', 
        'delay', 'efficient', 'favourable', 'generation', 'incline', 'league',
        'manufacture', 'midnight', 'nitrogen', 'passion', 'reaction', 'receiver',
        'satellite', 'turbine', 'universal', 'vertical', 'widen', 'vacuum',
         'vigorous', 'wander', 'welfare', 'worship', 'youth', 'yawn', 'wound']
        return list_of_word[rand(32)]
    end

    # Get user input which are five charactors
    def user_input
        puts "You need input five different charactors first to get some clues.(A vowel is the best)"
        gues_list = Array.new
        for x in 1..5
            print "No.#{x} input: "
            chara = gets.chomp
            if chara.length > 1
                puts "Please input correct charactor: "
                redo
            end
            if chara !~ /[abcdefghijklmnopqrstuvwxyz]/i
                puts "Please input correct charactor: "
                redo
            end
            if gues_list.include?(chara.downcase) == true
                puts "Input has exist try other charactors: "
                redo
            end
            gues_list.push(chara)
        end
        return gues_list
    end

    # From user input charactors it can calculate clue back to user to guess whole word.
    def give_clue(anser, gus_chara)
        new_list = Array.new
        y = 0
        puts anser
        anser.each_char do |compare|
            # puts compare
            y = 0
            gus_chara.each do |guessing|
                if compare == guessing then
                    y = 1
                    new_list.push(compare)
                    break
                end
            end
            if y == 0
                new_list.push("_")
            end
        end
        puts "There is the clue:\n                   "+new_list.join(' ')
    end


    # Function for game information and get users input
    def game_info
        puts "Welcome to Word Guessing Game."
        puts "You need guess a word in 10 times"
        print "Are you ready?[y/n]: "
    end
    
    # Function for get users guessing input
    def read_play
        puts "Intput the word in your mind:"
        return gets.chomp
    end

    def roll
        puts "> \n" * 32
    end

    def end_game
        print "Do you want to guess again?(y can play again,any type exit game): "
        pla = gets.chomp
        if pla == "y"
            return 1
        end
        return 0
    end
end


# Begin the game
new_game = Game.new
new_char = Array.new
times = 10
new_game.roll
new_game.game_info

answer = gets.chomp
while answer !~ /[y|n]$/i
    print "Error: input 'y' or 'n' please: "
    answer = gets.chomp
end
new_game.roll

while true
if answer == "y"
    ans_word = new_game.def_word
    new_char = new_game.user_input
    puts new_char
    new_game.roll
    new_game.give_clue(ans_word, new_char)
    
    while times > 0
        get_word = new_game.read_play
        if get_word == ans_word
            break
        else
            puts "Wrong! keep thinking, #{times} changes remain. " 
        end
        times-=1
        
    end
    if times <= 0
        puts "Nope! the word is #{ans_word}"
    else
        puts "Genius, you got it, the word is #{ans_word}"
    end
    
else
    puts "See you!"
end
    break if new_game.end_game == 0
end