module Stepable
  #finding the available moves for the chess piece that takes one step at time
  def available_moves
    moves=[]

    mov_dirs.each do |(dr,dc)|
      current_r,current_c= location
        current_r+=dr
        current_c+=dc
        loc=[current_r,current_c]
        next if !board.in_bounds?(loc)
        if board.empty?(loc) || enemy?(loc)
          moves<<loc
        end
    end
    moves
  end
end
  