class Rook < Piece

  include Slideable

  def symbol
    if color == :white
      :♜
    else
      :♖
    end
  end

  def move_dirs
    :horizontal
  end
  
end