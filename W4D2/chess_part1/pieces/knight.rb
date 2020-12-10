require_relative "piece.rb"
require_relative "../modules/stepable.rb"

class Knight < Piece
  include Stepable

  def symbol
    if color == :white
      :♞
    else
      :♘
    end
  end

  def move_diffs
    [
      [1, 2],
      [2, 1],
      [-1, -2],
      [-2, -1],
      [-1, 2],
      [1, -2],
      [2, -1],
      [-2, 1]
    ]
  end

  
end