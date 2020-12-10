class Pawn < Piece


  def symbol
    if color == :white
      :♟
    else
      :♙
    end
  end


  
end