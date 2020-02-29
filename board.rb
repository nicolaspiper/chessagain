require_relative 'piece'
require_relative 'errors'

class Board
    
    def initialize
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

end