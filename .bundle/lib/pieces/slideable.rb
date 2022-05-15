module Slideable
  #finding the available moves for the chess piece that takes more than a step
  def available_moves
    moves=[]

    mov_dirs.each do |(dr,dc)|
      current_r,current_c= location
      loop do
        current_r+=dr
        current_c+=dc
        loc=[current_r,current_c]
        break if !board.in_bounds?(loc)
        if board.empty?(loc)
          moves<<loc
        end
        if enemy?(loc)
          moves<<loc
          break
        end
      end
    end
    moves
  end
end
    