require "tty-prompt"

# p "What is your name?"
# name = gets.chomp

# p "Hi #{name}, Hope your day is goin well!"

$prompt = TTY::Prompt.new

# choice = prompt.yes?('Do you like Ruby?')
# p choice

# password = prompt.mask("What is your secret?")
# p password

def start
    p "What is your name?"
    name = gets.chomp
    say_hi(name)
end

def say_hi(name)
    p "Hi #{name}, Hope your day is goin well!"
    askForChoice
end

def askForChoice
    choice = $prompt.yes?('Do you like Ruby?')
    p choice
end

start