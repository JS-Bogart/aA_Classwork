class Bishop < Piece

  include Slideable

  def symbol
    if color == :white
      :♝
    else
      :♗
    end
  end

  def move_dirs
    :diagonal
  end



  
end