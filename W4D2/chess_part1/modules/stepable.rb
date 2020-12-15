module Stepable

  def moves
    possible_moves = []
      if symbol == :♚ || symbol == :♔
        move_diffs.each do |move|
          curr_x, curr_y = pos
          curr_x += move.first
          curr_y += move.last
          new_pos = [curr_x, curr_y]
          if board[new_pos].color != color && board.valid_pos?(new_pos)
            possible_moves << move
          end
        end
      elsif symbol == :♞ || symbol == :♘
        move_diffs.each do |move|
          curr_x, curr_y = pos
          curr_x += move.first
          curr_y += move.last
          new_pos = [curr_x, curr_y]
          if board[new_pos].color != color && board.valid_pos?(new_pos)
            possible_moves << move
          end
        end
      end
    possible_moves
  end
end