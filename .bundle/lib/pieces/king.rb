class King<Piece
  include Stepable
  def to_s
    color == :black ? "♚" : "♔"
  end
  #direrction that king can move around
  def mov_dirs
    [
      [0,1],
      [1,1],
      [1,0],
      [0,-1],
      [-1,0],
      [-1,1],
      [-1,-1],
      [1,-1]
    ]
  end
end