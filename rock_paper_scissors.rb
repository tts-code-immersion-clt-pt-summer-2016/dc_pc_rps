puts "Let's play Rock Paper Scissors!"
puts "You go first (throw rock, paper, or scissors)"
while true
  humans_choice = gets.chomp.downcase
  if (humans_choice == "rock"|| humans_choice == "paper"|| humans_choice == "scissors")
    break
  else
    puts "Please only throw rock, paper, or scissors"
  end
end
