class Robot
    def  initialize(coordinateX, coordinateY, direction, cols,rows)
        @coordinateX = coordinateX
        @coordinateY = coordinateY 
        @direction = direction
        @cols = cols
        @rows = rows
    end

    def getCoordinateX()
        return @coordinateX
    end

    def getCoordinateY()
        return @coordinateY
    end
    def getDirection()
        return @direction
    end

    def getFinalPosition()
        return (@coordinateX).to_s + "-" + (@coordinateY).to_s + '-' + @direction
    end

    def setDirection(newDirection)
        @direction = newDirection
    end

    def gerNewDirection(direction)
        leftMap = {
            'N' => 'O',
            'O' => 'S',
            'S' => 'E',
            'E' => 'N',
        }
        rightMap = {
            'N' => 'E',
            'E' => 'S',
            'S' => 'O',
            'O' => 'N',
        }
        if direction == 'I'
            return leftMap[@direction]
        end
        if direction == 'D'
            return rightMap[@direction]
        end
    end

    def rotate(direction)
        setDirection(gerNewDirection(direction))
    end

    def move()
        case @direction
        when 'N'
            if @coordinateY > 0
                @coordinateY = @coordinateY  - 1
            end
        when 'S'
            if (@rows -1) > @coordinateY
                @coordinateY = @coordinateY  + 1
            end
        when 'E'
            if (@cols -1) > @coordinateX 
                @coordinateX = @coordinateX  + 1
            end
        when 'O'
            if @coordinateX > 0
                @coordinateX = @coordinateX  - 1
            end
        end
    end

    def robotMovement(moves)
        if moves.is_a? String
            moves = moves.upcase
            cont = 0
            for cont in 0..moves.length do
                case moves[cont]
                when 'I'
                    rotate('I')
                when 'D'
                    rotate('D')
                when 'A'
                    move()
                end
            end
        end
    end
end