class InvalidPosition < StandardError
    
    def message
        puts 'Not a valid position'
    end

end

class EmptyPosition < StandardError
    
    def message
        puts 'This position is empty'
    end

end

class OccupiedPosition < StandardError
    
    def message
        puts 'A piece already occupies this position'
    end

end