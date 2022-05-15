class Game
  attr_reader :player1,:player2,:board,:renderer
  attr_accessor :current_player

  def initialize(board,player1,player2,renderer_class)
    @board =board
    @renderer =renderer_class.new(board)
    @player1=player1
    @player2=player2
    @current_player=@player1
  end
  #swap players
  def swap_player!
    self.current_player=(current_player == player1 ? player2 : player1)
  end
  #play till checkmate
  def play
    while !over?
      renderer.render
      puts"It's #{current_player.color}'s turn"
      if board.in_check?(current_player.color)
        puts "#{current_player.color} is in check."
      end
      take_turn
      swap_player!
    end


    puts"Game Over and the winner is:#{currnt_player.color}"
    renderer.render
  end

  
  def over?
    board.checkmate?(current_player.color)
  end


  
  def take_turn
    start_pos=nil
    #ask current player to choose a piece (its position)
    loop do
      puts "Select a piece to move:"
      start_pos=current_player.get_pos
      if board[start_pos].color == current_player.color
         break
      end
      puts "Did not select a #{current_player.color} piece"
    end
    #ask a plyer to enter a position to move the piece
    loop do
      puts"Select a position to move to:"
      end_pos=current_player.get_pos
      #move the piece in the board
      begin 
        board.move_piece(start_pos,end_pos)
        break
        rescue InvalidMoveError => e
        puts e.message
      end
    end
  end
end