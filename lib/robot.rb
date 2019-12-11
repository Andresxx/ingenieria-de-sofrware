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

    # def setDirection(newDirection)
    #     @direction = newDirection
    # end

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
end