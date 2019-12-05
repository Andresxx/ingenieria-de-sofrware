class CarWrapper

    def initialize(positionX, positionY, isempty)
        @positionX = positionX
        @positionY = positionY
        @isempty = isempty
        @direction = ''
    end

    def getpositionX
        return @positionX
    end

    def getpositionY
        return @positionY
    end

    def getCarDirection
        return (@positionX).to_s + "-" + (@positionX).to_s
    end

    def changeWrapperStatus(status)
        @isempty = status
    end

    def isTheWrapperEmpty
        return @isempty
    end

    def setCarDirection(direction)
        @isempty = false
        @direction = direction
    end

    def getDirection()
        return @direction
    end

    def getFinalPosition()
        return (@positionX).to_s + "-" + (@positionX).to_s + '-' + @direction
    end

end