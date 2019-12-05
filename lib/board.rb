require './lib/carWrapper'

class Board

    def initialize(rows, columns)
        @rows = rows
        @columns = columns
        @board = Array[]
        initializeBoard()
    end

    def initializeBoard()
        for i in (1..@columns) do
            for j in (1..@rows) do
                @board.push(CarWrapper.new(i, j, true))
            end
        end
    end

    def cleanBoard()
        for i in (1..@columns) do
            for j in (1..@rows) do
                @board[i + j].changeWrapperStatus(true)
            end
        end
    end

    def getRows()
        return @rows
    end

    def getColumns()
        return @columns
    end

    def isSlotEmpty(colum, row)
        @board[colum + row].isTheWrapperEmpty()
    end

    def setPostionForCar(positionX, positionY, direction)
        @board[positionX + positionY].setCarDirection(direction)
    end

    def getCarPositon(positionX, positionY)
        return @board[positionX + positionY].getDirection()
    end

    def getCarDirection(positionX, positionY)
        return @board[positionX + positionY].getCarDirection()
    end

    def getCarFinalPosition()
        for i in (1..@columns) do
            for j in (1..@rows) do
                if (@board[i + j].isTheWrapperEmpty() == false)
                    return @board[i + j].getFinalPosition()
                end
            end
        end
        return false
    end

end