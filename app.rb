require 'bundler'
Bundler.require

require_relative 'lib/players'
require_relative 'lib/game_board'
require_relative 'lib/game'
require_relative 'lib/case'
require_relative 'lib/tournament'

test = Tournament.new
test.tournament_run



