class Bishop<Piece
 include Slideable
  def to_s
    color == :black ? "♝" : "♗"
  end
  #direction that bishop can move around
  def mov_dirs
    [
      [1,1],
      [-1,1],
      [-1,-1], 
      [1,-1]
    ]
  end
end