
require 'pry'

def get_game_mode(start)
  mode = 0
  loop do
    if start == "y"
      print "\nChoose 1 or 2 players: "
      mode = gets.chomp.to_i
      break
    elsif start == "n"
      puts "\nMaybe later :)"
      exit
    else
      puts "\nChoose (Y)es or (N)o please."
      break
    end
  end
  mode
end

def get_sticks_picked_up
  stick_array = [1, 2, 3]
  sticks_picked_up = gets.chomp.to_i

  until
    stick_array.include? sticks_picked_up
    puts "\nYou can only pick up 1, 2, or 3 sticks at a time. How many sticks would you like to pick up? "
    sticks_picked_up = gets.chomp.to_i
  end
  sticks_picked_up
end

def get_winner(new_sticks)
  if new_sticks <= 1
    puts "\nYOU WIN!!\n" ##{player1},
    starting_sticks = 20
    exit
  end

end


starting_sticks = 20
mode = 0
loop do
  print "\nWould you like to play? Enter Y for yes N for no: "
  start = gets.chomp.downcase

  mode = get_game_mode(start)
  ####mode func (mode)1 or 2h
  if mode == 2
    print "\nEnter player1's name: "
    player1 = gets.chomp
    print "\nEnter player2's name: "
    player2 = gets.chomp
    puts "\nWe are starting with 20 sticks on the pile."

    loop do
      print "\n#{player1}, how many sticks would you like to pick up? 1-3: "

      sticks_picked_up = get_sticks_picked_up
      new_sticks = starting_sticks - sticks_picked_up
      get_winner(new_sticks)

      puts "\nThere are #{new_sticks} sticks on the table."
      print "\n#{player2}, how many sticks would you like to pick up? 1-3: "

      sticks_picked_up = get_sticks_picked_up
      starting_sticks = new_sticks - sticks_picked_up
      get_winner(starting_sticks)

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

      sticks_picked_up = get_sticks_picked_up
      new_sticks = starting_sticks - sticks_picked_up
      get_winner(new_sticks)

      puts "There are #{new_sticks} sticks on the table."

      sticks_picked_up = stick_array.sample
      starting_sticks = new_sticks - sticks_picked_up
      puts "\nThe computer picked up #{sticks_picked_up} sticks."
      puts "\nThere are #{starting_sticks} sticks on the table."
      if starting_sticks <= 1
        puts "The computer wins!"
        starting_sticks = 20
        break
      end
    end
  end
end
# if __FILE__ == $PROGRAM_NAME
#   main
# end
