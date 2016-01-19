# Method for start of the game **********************
def start
# Setup for menu
puts"					            "
puts"					            "
puts"             --- Welcome to The Jungle --- "
puts"                    ----------------"
puts"                   |1) Start Game   |"
puts"                   |2) Intro        |"
puts"                   |3) About        |"
puts"                   |4) Exit         |"
puts"                    ---------------- "

# get user input for menu **********************
choice=0
  until ((choice>=1)&&(choice<=4)) do
   puts"                   Chose your option:"
   print"                   > "
   choice = gets.chomp.to_i
 end

if (choice==1)
  intro
  select_weapon
end

if (choice==2)
  intro
  select_weapon
end

if (choice==3)
  about
  start
end

if (choice==4)
  close
end
end

#Method to clear screen **********************
def clear_screen
  sleep(3)
  system "clear"
end

# Method for intro to the game **********************
def intro
  clear_screen
  print "Today is "
  puts Time.now
  sleep(2)
  puts"\nYou are travelling by motorcycle on a dirt road in Thailand, when all of a sudden you swerve and hit a ditch. Knocking yourself unconcious...\n\n"
  sleep (5)
end

# Method for about menu option **********************
def about
  puts "Created by: Frank Rycak Jr." + " " + "\u00A9" + " " + "2016" + " " + "Wyncode Cohort 8"
  sleep(3)
end

# Method to exit the game **********************
def close
  puts "Goodbye comeback soon!"
  exit
end

# Method to choose weapon **********************
def select_weapon
	# Store weapons in new array
	weapons = [
    "\u{1F52B}" + "   " + "gun",
     "\u{1F526}" + "   " + "flashlight",
      "\u{1F525}" + "   " + "torch",
       "\u{1F528}" + "   " + "hammer",
        "\u{1F52A}" + "   " + "knife"]

# Ask user to choose a starting weapon
	puts "Choose your weapon by typing its associated number: \n\n"

# Loop through weapons array and print options to console
# prints the weapons and its value
	(0...weapons.length).each do |i|
		puts "#{i+1} - #{weapons[i]}"
	end

# user input placeholder
	print "> "

# getting the users choice
	choice = $stdin.gets.chomp.to_i - 1
	@selected_weapon = weapons[choice]

#switch case for output of weapon choice
  case choice
  when 0
    puts "You selected: #{@selected_weapon}"
    clear_screen
    start_game
  when 1
    puts "You selected: #{@selected_weapon}"
    clear_screen
    start_game
  when 2
    puts "You selected: #{@selected_weapon}"
    clear_screen
    start_game
  when 3
    puts "You selected: #{@selected_weapon}"
    clear_screen
    start_game
  when 4
    puts "You selected: #{@selected_weapon}"
    clear_screen
    start_game
  else
    puts "\nChoose again\n\n"
    select_weapon
  end
end

# Method to change weapon **********************
def change_weapon
	# Store weapons in new array
	weapons = [
    "\u{1F52B}" + "   " + "gun",
     "\u{1F526}" + "   " + "flashlight",
      "\u{1F525}" + "   " + "torch",
       "\u{1F528}" + "   " + "hammer",
        "\u{1F52A}" + "   " + "knife"]

# Ask user to choose a starting weapon
	puts "Choose your weapon by typing its associated number: \n\n"

# Loop through weapons array and print options to console
# prints the weapons and its value
	(0...weapons.length).each do |i|
		puts "#{i+1} - #{weapons[i]}"
	end

# user input placeholder
	print "> "

# getting the users choice
	choice = $stdin.gets.chomp.to_i - 1
	@selected_weapon = weapons[choice]

#switch case for output of weapon choice
  case choice
  when 0
    puts "You selected: #{@selected_weapon}"
    walking_down_the_path
  when 1
    puts "You selected: #{@selected_weapon}"
    walking_down_the_path
  when 2
    puts "You selected: #{@selected_weapon}"
    walking_down_the_path
  when 3
    puts "You selected: #{@selected_weapon}"
    walking_down_the_path
  when 4
    puts "You selected: #{@selected_weapon}"
    walking_down_the_path
  else
    puts "\nChoose again\n\n"
    select_weapon
  end
end

# Method to start game **********************
def start_game
# Assign initial value for items_collected array
	$items_collected = []

# Ask player if they are ready to play
	puts "\nReady to play? Y/N"
	print "> "

# confirmation of players intention to play
	confirm = $stdin.gets.chomp.upcase
	if confirm == 'Y'
    clear_screen
		enter_room
	else
		puts "Game over"
	end
end

# Method to enter room **********************
def enter_room
  time = Time.now
  time_future = time + 100*60*60
# Inform user of current status
	puts "\nYou awake in a small room."
  print "...the date is  "
  puts time_future
  puts "\nFours days after your accident!\n\n"
	puts "There is a large door in the distance that is locked."
	puts "In front of you is a small table.\n\n"
	puts "You walk towards the table.\n\n"
	desk_options
end

# Method for first item found at desk **********************
def desk_options
#items that can be found in the desk
  desk_items = [
    "\u{1F511}" + "   " + "key",
     "\u{270F}" + "   " + "pencil",
      "\u{1F4B5}" + "   " + "money",
       "\u{1F354}" + "   " + "hamburger",]

# Ask user to pick an item
	puts "Choose and item to take with you: "

# Loop through desk items array and print options to console
# prints the desk items and its value
  (0...desk_items.length).each do |i|
		puts "#{i+1} - #{desk_items[i]}"
	end

# user input placeholder
	print "> "

# getting the users choice
	choice = $stdin.gets.chomp.to_i - 1
	@selected_from_desk = desk_items[choice]

# if-statement to determine which item they chose and then adding it to the items_collected array
	if choice == 0
		puts "\nThe #{@selected_from_desk} has been added to your bag"
    $items_collected << "key"
    clear_screen
		puts "\nYou found a letter on the desk. It says 'Find your way to the castle and bring me my things!'"
    sleep(5)
    options_when_walking_away_from_desk
	elsif choice == 1
		puts "\nThe #{@selected_from_desk} has been added to your bag"
    $items_collected << "pencil"
    clear_screen
		puts "\nYou found a letter on the desk. It says 'Find your way to the castle and bring me my things!'"
    sleep(5)
    options_when_walking_away_from_desk
	elsif choice == 2
		puts "\nThe #{@selected_from_desk} has been added to your bag"
    $items_collected << "money"
    clear_screen
		puts "\nYou found a letter on the desk. It says 'Find your way to the castle and bring me my things!'"
    sleep(5)
    options_when_walking_away_from_desk
	elsif choice == 3
		puts "\nThe #{@selected_from_desk} has been added to your bag"
    $items_collected << "hamburger"
    clear_screen
		puts "\nYou found a letter on the desk. It says 'Find your way to the castle and bring me my things!'"
    sleep(5)
    options_when_walking_away_from_desk
  else
    puts "\n***Please choose an item that is available!***\n\n"
    desk_options
# printing out users selection
  puts "\nYou selected: #{@selected_from_desk}"
  end
end

# method for options when after picking item from desk **********************
def options_when_walking_away_from_desk
# letting user know whats happening with the door
  puts "\nYou walk to the door and... "
  sleep(2)
  if $items_collected.include?("key") then
    puts "You use the key to open the door"
    sleep(2)
    opened_the_door_walked_outside
  else !$items_collected.include?("key")
    puts "Sorry you dont have the key, go back to the desk!\n\n"
    sleep(2)
    remove_last_item_from_items_collected_at_desk
  end
end

#method to remove last item from array when being returned to previous task which is desk_options **********************
def remove_last_item_from_items_collected_at_desk
  $items_collected.delete($items_collected.last)
# returns user to previous task of choosing item from desk
  desk_options
end

#Method for your options when you have opened the door **********************
def opened_the_door_walked_outside
# array for choices once you have made it outside
  where_to_go = ["path", "forest"]
  puts "\nWhere would you like to go:"
  puts "Path or Forest?"
# user input placeholder
  print "> "

# getting user input for either forest or path
  confirm = $stdin.gets.chomp.upcase
	if confirm == "P" or confirm == "PATH"
		walking_down_the_path
    clear_screen
    sleep(3)
	elsif confirm == "F" or confirm == "FOREST"
		walking_down_into_the_forest
    clear_screen
    sleep(3)
  else
    puts "Choose again..."
    opened_the_door_walked_outside
	end
end

# Method for walking to the path **********************
def walking_down_the_path
  sleep(2)
  clear_screen
  puts "As you walk down the path it becomes harder to see, its getting dark."
  if @selected_weapon.include?("flashlight") or @selected_weapon.include?("torch") then
    puts "Luckily you have a #{@selected_weapon} to help light the path."
    walking_out_of_the_path
  else
    puts "\nOh No! you dont have the right tools to continue in the dark!"
    puts "\nWould you like to go back and pick another tool?"
    puts "Yes or No?"
    print "> "
  end

# confirmation to change weapon
    confirm = $stdin.gets.chomp.upcase
    if confirm == 'Y' or confirm == 'YES'
      puts "You walk back to the cabin..."
      clear_screen
    	change_weapon
    else
    	game_over
      restart_game
    end
end

#Method for walking thru of the path **********************
def walking_out_of_the_path
  path_items = ["ruby", "laptop"]
  sleep(3)
  puts "\nWith the use of your #{@selected_weapon} you see something in the distance"
  sleep(3)
  puts "\nIts a ruby and a laptop! Would you like to take one with you?"
  puts "Yes or No?"
  print "> "

  confirm = $stdin.gets.chomp.upcase
  if confirm == 'Y' or confirm == 'YES'
    sleep(2)
    puts "Which would you like to add to your bag?"
    puts "Ruby or the Laptop?"
    puts "Select number: "
#Loop through path items array and print options to console
# prints the path items and its value
      (0...path_items.length).each do |i|
    		puts "#{i+1} - #{path_items[i]}"
    	end

# user input placeholder
    	print "> "

# getting the users choice
    	choice = $stdin.gets.chomp.to_i - 1
    	@selected_path_item = path_items[choice]

      if choice == 0 then
        puts "You have added the #{@selected_path_item} to the bag"
      $items_collected << @selected_path_item
      puts "Now you make your way to the end of the path"
      sleep(4)
      enter_castle
    elsif choice == 1
      puts "You have added the #{@selected_path_item} to the bag"
    $items_collected << @selected_path_item
      puts "Now you make your way to the end of the path"
      sleep(4)
    enter_castle
    else
        puts "Choose 1 or 2"
        walking_out_of_the_path
      end
  else
    puts "You took nothing and continued out of the path."
    enter_castle
  end

end

# Method for walking thru the forest **********************
def walking_down_into_the_forest
  clear_screen
  puts "As you walk into the forest you hear a noise up ahead.\n\n"
  sleep(2)
  puts "There is a Giant Troll rushing towards you...\n\n"
  sleep(2)
   if @selected_weapon.include?("gun") or @selected_weapon.include?("knife") then
    puts "Luckily you have a #{@selected_weapon} and you defeated the Giant Troll!\n\n"
    walking_out_of_the_forest
  else
    puts "Oh No! you dont have the right tools to fight The Giant Troll!\n\n"
    puts "He rushes you and crushes your skull\n\n"
    game_over
  end
end

# Method for walking out of the forest **********************
def walking_out_of_the_forest
  clear_screen
  trolls_head = "Trolls Head"
  puts "Now that you used your #{@selected_weapon} to defeat the Giant Troll,"
  puts "Would you like to take his head as a suvorneir?\n\n"
  puts "Yes or No?"
  print "> "

    confirm = $stdin.gets.chomp.upcase
    if confirm == "Y" or confirm == "YES"
      puts "You added the #{trolls_head} to your bag.\n\n"
      $items_collected << "trolls_head"
      enter_castle
    else
      puts "You took nothing and continued out of the path."
      enter_castle
    end
end

# Method for entering the castle **********************
def enter_castle
  clear_screen
  sleep(5)
  castle_choices = ["door", "staircase"]
  puts "You made it to the castle!"
  puts "\nAs you walk in you notice there is a door ahead and a staircase."
  puts "\nWould you like to open the door, or walk up the staircase"
  puts "Type 'door' or 'stairs':"
  print"> "

  confirm = $stdin.gets.chomp.upcase
  clear_screen
	if confirm == 'DOOR' or confirm == 'D'
    puts "The door is locked and you dont have another key."
		wrong_choice_castle
	elsif confirm == 'STAIRS' or confirm == 'S'
		puts "You have made it to the castle! The Knight asks if you brought his things."
    user_items
  else
    puts "Choose again..."
    wrong_choice_castle
	end
end

# Method for when choosing the wrong option **********************
def wrong_choice_castle
  castle_choices = ["door", "staircase"]
  puts "\nTry something else!"
  sleep(2)
  puts "\nWould you like to open the door, or walk up the staircase"
  puts "Type 'door' or 'stairs':"
  print"> "

  confirm = $stdin.gets.chomp.upcase
  clear_screen
	if confirm == 'DOOR' or confirm == 'D'
    puts "The door is locked and you dont have another key."
		wrong_choice_castle
	elsif confirm == 'STAIRS' or confirm == 'S'
    sleep(3)
		puts "You found the person who wrote the note! They ask you if you brought their things."
    user_items
  else
    puts "Choose again..."
    wrong_choice_castle
	end
end

#Method to determine if the items_collected are equal to the correct items **********************
def user_items
  puts "\nLets see if you collected the correct items: "
#sleep arguement to build suspense
  puts "Confirming please wait..."
  sleep(4)
  puts "........................."
  sleep(3)
  puts "...........in progress"
  sleep(2)
  puts "......complete"
  sleep(2)

# verification that the items_collected equal valid_items
  if $items_collected == ["key", "ruby"] or $items_collected == ["key", "trolls_head"]
    puts "\nYou have the correct combination!\n\n"
    winner
  else
    puts "\nYou have the wrong combination\n\n"
    game_over
  end
end

# Method for declaring a winner **********************
def winner
    puts "██╗    ██╗██╗███╗   ██╗███╗   ██╗███████╗██████╗ "
    sleep(1)
    puts "██║    ██║██║████╗  ██║████╗  ██║██╔════╝██╔══██╗"
         sleep(1)
    puts "██║ █╗ ██║██║██╔██╗ ██║██╔██╗ ██║█████╗  ██████╔╝"
         sleep(1)
    puts "██║███╗██║██║██║╚██╗██║██║╚██╗██║██╔══╝  ██╔══██╗"
         sleep(1)
    puts "╚███╔███╔╝██║██║ ╚████║██║ ╚████║███████╗██║  ██║"
         sleep(1)
    puts " ╚══╝╚══╝ ╚═╝╚═╝  ╚═══╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝"
         sleep(1)
    puts "                                                 "
         sleep(1)
    restart_game
end

# Method for declaring a loser **********************
def game_over
    puts "  ██████╗  █████╗ ███╗   ███╗███████╗"
    sleep(1)
    puts "██╔════╝ ██╔══██╗████╗ ████║██╔════╝"
    sleep(1)
    puts "██║  ███╗███████║██╔████╔██║█████╗  "
    sleep(1)
    puts "██║   ██║██╔══██║██║╚██╔╝██║██╔══╝  "
    sleep(1)
    puts "╚██████╔╝██║  ██║██║ ╚═╝ ██║███████╗"
    sleep(1)
    puts "╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝"
    sleep(1)
    puts "                                 "
    sleep(1)
    puts "██████╗ ██╗   ██╗███████╗██████╗   "
    sleep(1)
    puts "██╔═══██╗██║   ██║██╔════╝██╔══██╗  "
    sleep(1)
    puts "██║   ██║██║   ██║█████╗  ██████╔╝  "
    sleep(1)
    puts "██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗  "
    sleep(1)
    puts "╚██████╔╝ ╚████╔╝ ███████╗██║  ██║  "
    sleep(1)
    puts "╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝  "
    sleep(1)


    exit(0)
end

# Method to restart_game **********************
def restart_game
  puts "Would you like to play again?"
  puts "Yes or No?"
  print "> "

# getting the users choice
	choice = $stdin.gets.chomp.upcase

# determine users choice
  if choice == 'Y' or choice == 'YES' then
    select_weapon
  elsif choice == 'N' or choice == 'NO'
    game_over
  else
    puts "Choose Yes or No\n\n"
    restart_game
end
end
start
