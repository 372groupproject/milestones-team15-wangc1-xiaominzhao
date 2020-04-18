# tiny program
def giao
    puts "Here is function. Giao!"
end

class Giao
    puts "Here is class."
    giao
end

# small-ish program
def change
    be_text = "after function"
    return be_text
end
class Check
    be_text = "before fuction"
    puts be_text
    new_str = change
    puts be_text
    puts new_str
end