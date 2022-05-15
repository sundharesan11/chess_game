class Rook < Piece
 include Slideable
  def to_s
    color == :black ? "♜" : "♖"
  end
  #available directions for rook to move around
  def mov_dirs
    [
      [0,1],
      [0,-1],
      [1,0],
      [-1,0]
    ]
  end
end