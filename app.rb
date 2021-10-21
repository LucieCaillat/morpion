require 'bundler'
Bundler.require

require_relative 'lib/players'
require_relative 'lib/game_board'
require_relative 'lib/game'
require_relative 'lib/case'

test = Game.new
test.game_run



