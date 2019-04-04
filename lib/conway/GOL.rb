require_relative "./GOL/version"
require_relative "./GOL/world"
require_relative "./GOL/cell"
require_relative "./GOL/game"
require "colorize"

module Conway
  game = Conway::Game.new
  game.init
end
