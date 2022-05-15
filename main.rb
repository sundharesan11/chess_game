require_relative '.bundle/lib/invalid_move_error.rb'
require_relative '.bundle/lib/board.rb'
require_relative '.bundle/lib/board_renderer.rb'
require_relative '.bundle/lib/pieces.rb'
require_relative '.bundle/lib/game.rb'
require_relative '.bundle/lib/player.rb'



b=Board.start_chess

g=Game.new(b,Player.new(:black),Player.new(:white),BoardRendererText)
g.play