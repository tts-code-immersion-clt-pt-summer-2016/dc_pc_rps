puts "Let's play Rock Paper Scissors!"
puts "You go first (throw rock, paper, or scissors)"
while true
  user_choice = gets.chomp.downcase
  if (user_choice == "rock"|| user_choice == "paper"|| user_choice == "scissors")
    break
  else
    puts "Please only throw rock, paper, or scissors"
  end
end

possible_choices = ['rock', 'paper', 'scissors']
computer_choice = possible_choices.sample
puts computer_choice
