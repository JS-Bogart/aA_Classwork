module Stepable

  def moves
    possible_moves = []
      if self.is_a?(King)
        curr_x, curr_y = pos
        move_diffs.each do |move|
          curr_x += move.first
          curr_y += move.last
          new_pos = [curr_x, curr_y]
          if board[new_pos].color != color && board.valid_pos?(new_pos)
            possible_moves << move
          end
        end
      elsif self.is_a?(Knight)
        curr_x, curr_y = pos
        move_diffs.each do |move|
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