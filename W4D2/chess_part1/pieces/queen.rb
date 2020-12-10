require_relative "piece.rb"
require_relative "../modules/slideable.rb"

class Queen < Piece

  include Slideable

  def symbol
    if color == :white
      :♛
    else
      :♕
    end
  end

  def move_dirs
    :both
  end
  
end