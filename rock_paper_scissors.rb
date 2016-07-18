#program that lets you play rock paper scissors with the computer
answer = 'yes'
while answer == 'yes'
puts "Let's play Rock Paper Scissors!"
#this section gets the users choice and makes sure user only provides rock, paper, or scissors
while true
  puts "Your turn (throw rock, paper, or scissors)"
  user_choice = gets.chomp.downcase
  if (user_choice == "rock"|| user_choice == "paper"|| user_choice == "scissors")
    break
  else
    puts "Please only throw rock, paper, or scissors"
  end
end

#this section gets the computers choice
possible_choices = ['rock', 'paper', 'scissors']
computer_choice = possible_choices.sample

if (user_choice == "rock" && computer_choice == "rock")
  puts "You tied! You both threw #{user_choice}."
elsif (user_choice == "rock" && computer_choice == "paper")
  puts "Computer wins! You threw #{user_choice} and computer threw #{computer_choice}."
elsif (user_choice == "rock" && computer_choice == "scissors")
  puts "You win! You threw #{user_choice} and computer threw #{computer_choice}."
elsif (user_choice == "paper" && computer_choice == "paper")
  puts "You tied! You both threw #{user_choice}."
elsif (user_choice == "paper" && computer_choice == "rock")
  puts "You win! You threw #{user_choice} and computer threw #{computer_choice}."
elsif (user_choice == "paper" && computer_choice == "scissors")
  puts "Computer wins! You threw #{user_choice} and computer threw #{computer_choice}."
elsif (user_choice == "scissors" && computer_choice == "rock")
  puts "Computer wins! You threw #{user_choice} and computer threw #{computer_choice}."
elsif (user_choice == "scissors" && computer_choice == "paper")
  puts "You win! You threw #{user_choice} and computer threw #{computer_choice}."
elsif (user_choice == "scissors" && computer_choice == "scissors")
  puts "You tied! You both threw #{user_choice}."
end


puts "Would you like to play again (yes/no)?"
  while true
    answer = gets.chomp.downcase
    if (answer == 'yes' || answer == 'no')
      break
    else
      puts "Please only answer yes or no."
    end
  end
end
