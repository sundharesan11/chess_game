class Queen<Piece
  include Slideable
  def to_s
    color == :black ? "♛" : "♕"
  end
  #available directions for queen to move in board
  def mov_dirs
    [
      [1,0],
      [0,1],
      [-1,0],
      [1,-1],
      [-1,-1],
      [0,-1],
      [-1,1],
      [1,1]
    ]
  end
end