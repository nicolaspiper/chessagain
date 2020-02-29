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

    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
    end

    def to_s
        
    end

    def empty?
    
    end

    def valid_moves
    
    end

    def pos=(val)
    
    end

    def symbol
    
    end

    private

    def move_into_check?(end_pos)
    
    end

end