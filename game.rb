#nbr guessing game

puts "Welcome to Number Guessing Game 🎮!"
puts "I am thinking of a number betweeen 1 and 100."

target = rand(1..100)
guess = nil
attempts = 0

until guess == target
    print "Enter your guess: "
    input = gets.chomp

#validate input
if input.to_i.to_s != input
    puts "Puts a valid number."
    next
end

guess = input.to_i
attempts += 1

if guess < target
    puts  "Too low !"
elsif guess > target
    puts "Too high!"
else
    puts "Congratulations! You guessed it in #{attempts} attempts."
end

end