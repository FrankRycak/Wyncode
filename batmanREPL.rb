 # readability refactoring
def say(statement)
  puts statement
end

# ask a question
# DRY refactoring
def ask_question(question, options)
  say question
  say "Your options are: #{options}"
  gets.chomp.capitalize.strip
end

# show a separator line
# readability refactoring
def show_line
  say "=" * 25
end

# handle the sidekick response
# readability refactoring
def whos_your_sidekick(sidekick)
  if sidekick == "Robin"
    say "#{sidekick}: Holy rusted metal, Batman!"
  elsif sidekick == "Batgirl"
    say "#{sidekick}: Suit me up, Uncle Alfred."
  else
    say "Fine, I'll pick one for you."
    sidekick = "Robin"
  end

  sidekick
end

# handle the weapon response
# readability refactoring
def whats_your_weapon(sidekick, weapon)
  options_hash = {
    "Batarang" => "#{sidekick}: Awesome! A Batarang! Thanks Batman!",
    "Fists" => "#{sidekick}: I don't need a weapon. I'll just use my fists like you Batman!",
    "Flashlight" => "#{sidekick}: Uh... thanks? I'll make sure to keep a light on you..."
  }

  if options_hash.keys.include?(weapon)
    say options_hash[weapon]
  else
    say "#{sidekick}: Share your toys with your sidekick!"
    weapon = "batarang"
  end
end

# handle the enemy response
# readability refactoring
def whos_your_enemy(enemy)

  # validate enemy response
  valid_options = ["Riddler", "Penguin", "Joker"]
  until valid_options.include?(enemy)
    # puts ["Huh?", "Wha?", "Que?", "Como?"].sample
    question = ["Huh?", "Wha?", "Que?", "Como?"].sample

    # puts "Options: Joker, Penguin, Riddler"
    options = "Joker, Penguin, Riddler"

    # enemy = gets.chomp.capitalize.strip
    enemy = ask_question question, options
  end

  # alternate validation strategy
  # loop do
  #   puts "Huh?"
  #   puts "Options: Joker, Penguin, Riddler"
  #   enemy = gets.chomp.capitalize.strip
  #
  #   if valid_options.include?(enemy)
  #     break
  #   end
  # end

  case enemy
  when "Riddler"
    say "#{enemy}: Puzzle me this, Batman."
  when "Joker"
    say "#{enemy}: Ha ha ha ha... ha ha."
  when "Penguin"
    say "#{enemy}: Rweh rweh rweh... rweh..."
  else
    say "This should never happen."
    # ... if the validation is correct
  end
end


# intro
#
# say "After all your hard work you've become Batman!"
# show_line

# question 1: who will be your sidekick
# puts "Who will be your sidekick?"
# batgirl or robin?
# puts "Options: Batgirl or Robin"
# sidekick = gets.chomp.capitalize.strip
# if sidekick == "Robin"
#   say "Robin: Holy rusted metal, Batman!"
# elsif sidekick == "Batgirl"
#   say "Batgirl: Suit me up, Uncle Alfred."
# else
#   say "Fine, I'll pick one for you."
#   sidekick = "Robin"
# end
# show_line

# question 2: give your sidekick a weapon
# puts "Awesome! Let's get your sidekick a weapon to defend themselves!"
# batarang, fists, flashlight
# puts "Options: batarang, fists, or flashlight"
# weapon = gets.chomp.downcase.strip

# hash version
#
# weapons_hash = {
#   "Batarang" => "#{sidekick}: Awesome! A Batarang! Thanks Batman!",
#   "Fists" => "#{sidekick}: I don't need a weapon. I'll just use my fists like you Batman!",
#   "Flashlight" => "#{sidekick}: Uh... thanks? I'll make sure to keep a light on you..."
# }
# if weapons_hash.keys.include?(weapon)
#   say options_hash[weapon]
# else
#   say "#{sidekick}: Share your toys with your sidekick!"
#   weapon = "batarang"
# end

# case/when version
#
# case weapon
# when "batarang"
#   puts "Awesome! A Batarang! Thanks Batman!"
# when "fists"
#   puts "I don't need a weapon. I'll just use my fists like you Batman!"
# when "flashlight"
#   puts "Uh... thanks? I'll make sure to keep a light on you..."
# else
#   puts "Share your toys with your sidekick!"
#   weapon = "batarang"
# end

# if/then version
#
# if weapon == "batarang"
#   puts "Awesome! A Batarang! Thanks Batman!"
# elsif weapon == "fists"
#   puts "I don't need a weapon. I'll just use my fists like you Batman!"
# elsif weapon == "flashlight"
#   puts "Uh... thanks? I'll make sure to keep a light on you..."
# else
#   puts "Share your toys with your sidekick!"
#   weapon = "batarang"
# end
# show_line

# question 3: who do we fight first?
# puts "Who should we fight first?"
# Riddler, Penguin, Joker
# puts "Options: Joker, Penguin, Riddler"
# enemy = gets.chomp.capitalize.strip
# valid_options = ["Riddler", "Penguin", "Joker"]
#
# # validate enemy
# until valid_options.include?(enemy)
#   # puts ["Huh?", "Wha?", "Que?", "Como?"].sample
#   question = ["Huh?", "Wha?", "Que?", "Como?"].sample
#   # puts "Options: Joker, Penguin, Riddler"
#   options = "Joker, Penguin, Riddler"
#   # enemy = gets.chomp.capitalize.strip
#   enemy = ask_question question, options
# end
#
# # loop do
# #   puts "Huh?"
# #   puts "Options: Joker, Penguin, Riddler"
# #   enemy = gets.chomp.capitalize.strip
# #
# #   if valid_options.include?(enemy)
# #     break
# #   end
# # end
#
# case enemy
# when "Riddler"
#   say "#{enemy}: Puzzle me this, Batman."
# when "Joker"
#   say "#{enemy}: Ha ha ha ha... ha ha."
# when "Penguin"
#   say "#{enemy}: Rweh rweh rweh... rweh..."
# else
#   say "This should never happen."
# end

say "After all your hard work you've become Batman!"
show_line

sidekick = ask_question "Who will be your sidekick?", "Batgirl or Robin"
sidekick = whos_your_sidekick sidekick
show_line

weapon = ask_question "Awesome! Let's get your sidekick a weapon to defend themselves!", "batarang, fists, or flashlight"
whats_your_weapon(sidekick, weapon)
show_line

enemy = ask_question "Who should we fight first?", "Joker, Penguin, Riddler"
whos_your_enemy enemy
