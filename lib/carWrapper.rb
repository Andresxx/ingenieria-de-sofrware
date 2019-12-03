class CarWrapper

    def initialize(positionX, positionY, isempty)
        @positionX = positionX
        @positionY = positionY
        @isempty = isempty
    end

    def getpositionX
        return @positionX
    end

    def getpositionY
        return @positionY
    end

    def changeWrapperStatus(status)
        @isempty = status
    end

    def isTheWrapperEmpty
        return @isempty
    end

end