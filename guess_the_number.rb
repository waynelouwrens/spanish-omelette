def print_divider
  puts "*" * 40
  puts "\n"
end

print_divider
  puts "...WELCOME TO THE NUMBER GUESSING GAME...\n"
print_divider


puts "I AM THINKING OF A NUMBER BETWEEN 0 AND 100...\n"
comp_num = rand(100)

puts "\nWhat number do you think I have chosen?"

counter = 0
points = 100

while counter < 10

  player_num = gets.chomp.to_i

  if player_num != comp_num
     puts "You got me! CONGRATS You have #{points} left."
      break
  else
    puts player_num > comp_num ? "How low can you go - Lower!\n":
    "The sky is the limit dear - Higher!\n"
    counter +=1
    points -= 10
  end

  if counter == 10
   puts """\n            GAME OVER\n
       - DEATH BY NUMBER _ \n"""
  end
end

puts "\n        THANKS FOR DANCING!"
