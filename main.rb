#require_reative 'sticksgame'
# start = true
starting_sticks = 20
mode = 0
until #start == false
  print "\nWould you like to play? Enter Y for yes N for no: "
  start = gets.chomp.downcase

  loop do
    case start
    when "y"
      print "\nChoose 1 or 2 players: "
      mode = gets.chomp.to_i
      break
    when "n"
      puts "\nMaybe later :)"
      exit
    else #how to retry if input isnt y or n??
      puts "\nChoose (Y)es or (N)o please."
      break
    end
  end

  if mode == 2
    print "\nEnter player1's name: "
    player1 = gets.chomp
    print "\nEnter player2's name: "
    player2 = gets.chomp
    puts "\nWe are starting with 20 sticks on the pile."

    loop do
      stick_array = [1, 2, 3]
      print "\n#{player1}, how many sticks would you like to pick up? 1-3: "
      sticks_picked_up = gets.chomp.to_i
      until
        stick_array.include? sticks_picked_up
        puts "\nYou can only pick up 1, 2, or 3 sticks at a time. How many sticks would you like to pick up? "
        sticks_picked_up = gets.chomp.to_i
      end
      new_sticks = starting_sticks - sticks_picked_up
      if new_sticks <= 1
        puts "\n#{player1}, YOU WIN!!"
        starting_sticks = 20
        break
      end
      puts "\nThere are #{new_sticks} sticks on the table."

      stick_array = [1, 2, 3]
      print "\n#{player2}, how many sticks would you like to pick up? 1-3: "
      sticks_picked_up = gets.chomp.to_i
      until
        stick_array.include? sticks_picked_up
        puts "\nYou can only pick up 1, 2, or 3 sticks at a time. How many sticks would you like to pick up? "
        sticks_picked_up = gets.chomp.to_i
      end
      starting_sticks = new_sticks - sticks_picked_up
      if starting_sticks <= 1
        puts "\n#{player2}, YOU WIN!!"
        starting_sticks = 20
        break
      end
      puts "\nthere are #{starting_sticks} sticks on the table."
    end
  end

  if mode == 1
    print "\nWhat is your name? "
    player1 = gets.chomp
    stick_array = [1, 2, 3]
    puts "\nWe are starting with 20 sticks on the pile."

    loop do
      print "\n#{player1}, how many sticks would you like to pick up? 1-3: "
      sticks_picked_up = gets.chomp.to_i
      until
        stick_array.include? sticks_picked_up
        puts "You can only pick up 1, 2, or 3 sticks at a time. How many sticks would you like to pick up? "
        sticks_picked_up = gets.chomp.to_i
      end
      new_sticks = starting_sticks - sticks_picked_up
      if new_sticks <= 1
        puts "#{player1}, you win!"
        starting_sticks = 20
        break
      end
      puts "There are #{new_sticks} sticks on the table."

    sticks_picked_up = stick_array.sample
    starting_sticks = new_sticks - sticks_picked_up
    puts "\nThe computer picked up #{sticks_picked_up} sticks."
    puts "\nThere are #{starting_sticks} sticks on the table."
    if starting_sticks <= 1
      puts "The computer wins!"
      starting_sticks = 20
      break
    #puts "there are #{starting_sticks} sticks on the table."
  end
end
end
end
# if __FILE__ == $PROGRAM_NAME
#   main
# end
