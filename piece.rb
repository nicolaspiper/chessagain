require_relative 'pieces/bishop'
require_relative 'pieces/king'
require_relative 'pieces/knight'
require_relative 'pieces/null_piece'
require_relative 'pieces/pawn'
require_relative 'pieces/queen'
require_relative 'pieces/rook'
require_relative 'pieces/slideable'
require_relative 'pieces/steppable'

class Piece

    def initialize(color=nil, board=nil, pos)
        @color = color
        @board = board
        @pos = pos

    end
end