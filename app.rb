require 'bundler'
Bundler.require

require_relative 'lib/players'
require_relative 'lib/game_board'
require_relative 'lib/game'

test = Game.new("jojo" , "lulu")
test.game_run



