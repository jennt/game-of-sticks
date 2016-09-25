# class Game
#   def play
#     start
#
#     until is_game_over
#       handle_input
#
#       update
#
#       render
#     end
#
#     game_over
#   end
#
#   def is_game_over
#     true
#   end
#
#   def start
#   end
#
#   def game_over
#
# class SticksGame
#   attr_accessor :
#   def initialize()
#   end
# end
# and have your game class inherit from that Game class
#
# [7:49]
# class SticksGame < Game
# then you could do something like
# sticks_game = SticksGame.new
# sticks_game.play
# and it would start your game loop
