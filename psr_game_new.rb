player_count = 0
computer_count = 0

puts "\nWelcome to Paper Rock Scissors\n"
puts ''

items = ['r', 'p', 's']

while (player_count || computer_count) < 3
  puts "\nPlayer Score: #{player_count}, \tComputer Score: #{computer_count}"
  puts "Choose rock (r), paper (p), or scissors (s) "
  player_input = gets.chomp
  computer_input = items.sample

  if player_input == computer_input
    puts "Computer chose #{computer_input} and you chose #{player_input}"
    puts "It's a tie!"
  elsif (player_input == 'p' && computer_input == 'r')||
        (player_input == 'r' && computer_input == 's')||
        (player_input == 's' && computer_input == 'p')
    puts "Computer chose #{computer_input} and you chose #{player_input}"
    puts "Player won!"
    player_count += 1
  else
    puts "Computer chose #{computer_input} and you chose #{player_input}"
    puts "Computer won!"
    puts
    computer_count += 1
  end

  if player_count == 3
    puts "Player wins!"
    puts "Player Score: #{player_count}, \tComputer Score: #{computer_count}"
    break
  elsif computer_count == 3
    puts "Computer wins!"
    puts "Player Score: #{player_count}, \tComputer Score: #{computer_count}"
    break
  end

  puts "Play again? (y/n)"
  break if gets.chomp.downcase != 'y'
end

puts "Good Bye"
