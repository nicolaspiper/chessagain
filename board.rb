require_relative 'piece'
require_relative 'errors'

class Board
    
    def initialize
        setup_board
        @rows = Array.new(8){ |row| 
            Array.new(8) { |col| 
                Piece.new(nil,nil,[row,col])
            }
        }
    end 

    def [](pos)
        raise InvalidPosition unless valid_pos?(pos)
        
        row, col = pos
        @rows[row][col]
    end
    
    def []=(pos,val)
        raise InvalidPosition unless valid_pos?(pos)
        
        row, col = pos
        @rows[row][col] = val
    end

    def empty?(pos)
        self[pos].empty?
    end

    def move_piece(turn_color, start_pos, end_pos)
        piece = self[start_pos]
        self[start_pos] = nil
        self[end_pos] = piece
    end

    def valid_pos?(pos)
        pos.all? { |coor| coor >= 0 && coor <= 7}
    end

    def add_piece(piece)
        raise OccupiedPosition unless self.empty?(piece.pos)
        self[piece.pos]= piece
    end

    private
    
    def setup_board
        
    end

    def place_pawns(color)
        i = color == :white ? 6 : 1
        (0...8).each {|j| Pawn.new(color,self,[i,j])}
    end

end