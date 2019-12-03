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

    def getRows()
        return @rows
    end

    def getColumns()
        return @columns
    end

    def isSlotEmpty(colum, row)
        @board[colum + row].isTheWrapperEmpty()
    end

    def setPostionForCar(positionX, positionY)
        @board[positionX + positionY].changeWrapperStatus(false)
    end

end