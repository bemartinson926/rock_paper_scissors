# Create a Rock, Paper, Scissors program that meets the following requirements:

# 1. Prompt the user for input (i.e. "R, P, or S")
# 2. Send back and display computer move (i.e., "Computer played...")
# 3. Create code that runs your move against a random computer move and displays
#    "Win", "Lose", or "Tie"
# 4. You will need to make use of LOOPS, CONDITIONALS, VARIABLES, and EQUALITY OPERATORS.
# 5. Once this code functions, implement a COUNTER that keeps USER and COMPUTER scores
#    and pulls a winner once a score of 3 is reached.

puts "Welcome to Rock, Paper, Scissors!"
puts "Are you ready to play?"

player_count = 0
computer_count = 0
tie_count = 0
game_count = 0

until player_count == 3 || computer_count == 3

	puts
	puts "Please enter 'R' for rock, 'P' for paper, or 'S' for scissor."
	play = gets.chomp.upcase

	puts

	if play == "R"
		puts "Your move is Rock."
	elsif play == "P"
		puts "Your move is Paper."
	elsif play == "S"
		puts "Your move is Scissors."
	end
		
	options_array = ["R", "P", "S"]

	#computer_move = _.sample(options_array, 1)

	#computer_move = options_array.shuffle[1]

	computer_move = options_array.sample

	if computer_move == "R"
		puts "The computer move is.... Rock."
	elsif computer_move == "P"
		puts "The computer move is.... Paper."
	elsif computer_move == "S"
		puts "The computer move is.... Scissors."
	end

	if play == computer_move
		puts "Tie!"
		tie_count += 1

	elsif play == "R" && computer_move == "S"
		puts "You win!"
		player_count += 1

	elsif play == "R" && computer_move == "P"
		puts "You lose!"
		computer_count += 1

	elsif play == "P" && computer_move == "S"
		puts "You lose!"
		computer_count += 1

	elsif play == "P" && computer_move == "R"
		puts "You win!"
		player_count += 1

	elsif play == "S" && computer_move == "R"
		puts "You lose!"
		computer_count += 1

	elsif play == "S" && computer_move == "P"
		puts "You win!"
		player_count += 1
	end

	game_count += 1
	
	puts
	puts "At the end of Round #{game_count}..."
	puts "The score is:"
	puts "You: #{player_count} | Computer: #{computer_count}"
	puts "You have tied #{tie_count} times."

end

puts

if computer_count == 3
	puts "Sorry, you lose! The Computer beat you 3 times!"
elsif player_count == 3
	puts "Congratulations! You beat the Computer 3 times!"
end

puts

