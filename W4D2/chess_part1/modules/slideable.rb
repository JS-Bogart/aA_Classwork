module Slideable

  
  def horizontal_dirs
    h_moves = []
    HORIZONTAL_DIRS.each do |dir|
      dx, dy = dir
      h_moves += grow_unblocked_moves_in_dir(dx, dy)
    end
    h_moves
  end
  
  def diagonal_dirs
    d_moves = []
    DIAGONAL_DIRS.each do |dir|
      dx, dy = dir
      d_moves += grow_unblocked_moves_in_dir(dx, dy)
    end
    d_moves
  end
  
  def moves
    possible_moves = []
    if move_dirs == :diagonal
      possible_moves += diagonal_dirs
    elsif move_dirs == :horizontal
      possible_moves += horizontal_dirs
    else
      possible_moves += diagonal_dirs
      possible_moves += horizontal_dirs
    end
    possible_moves
  end


  private

  HORIZONTAL_DIRS = [
    [1, 0],
    [-1, 0],
    [0, 1],
    [0, -1]
  ]

  DIAGONAL_DIRS = [
    [1, 1],
    [1, -1],
    [-1, 1],
    [-1, -1]
  ]

  def grow_unblocked_moves_in_dir(dx, dy)
    curr_x, curr_y = pos
    dir_moves = []
    until curr_x == -1 || curr_x == 8 || curr_y == -1 || curr_y == 8
      curr_x += dx
      curr_y += dy
      return dir_moves if board[[curr_x, curr_y]].color == self.color
      dir_moves << [curr_x, curr_y] if curr_x > -1 && curr_x < 8 && curr_y > -1 && curr_y < 8
      return dir_moves if board[[curr_x, curr_y]].color == self.color && board[[curr_x, curr_y]].color == :empty
    end
    dir_moves
  end

end