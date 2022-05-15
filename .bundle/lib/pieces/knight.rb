class Knight<Piece
  include Stepable
  def to_s
    color == :black ? "♞" : "♘"
  end
  #direction that knight can move around
  def mov_dirs
    [
      [1,2],
      [2,1],
      [-1,2],
      [1,-2],
      [2,-1],
      [-2,1],
      [-1,-2],
      [-2,-1]
    ]
  end
end