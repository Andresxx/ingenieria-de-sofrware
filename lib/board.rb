require './lib/carWrapper'

class Board

    def initialize(rows, columns)
        @rows = rows
        @columns = columns
        @board = Array.new(@columns)
        initializeBoard()
    end

    def initializeBoard()
        for i in (1..@columns) do
            @board[i] = Array.new(@rows)
            for j in (1..@rows) do
                @board[i][j] = (CarWrapper.new(i,j,true))
                # @board.push(CarWrapper.new(i, j, true))
            end
        end
    end

    # def cleanBoard()
    #     for i in (1..@columns) do
    #         for j in (1..@rows) do
    #             @board[i + j].changeWrapperStatus(true)
    #         end
    #     end
    # end

    def getRows()
        return @rows
    end

    def getColumns()
        return @columns
    end

    def isSlotEmpty(colum, row)
        @board[colum][row].isTheWrapperEmpty()
    end

    def setPostionForCar(positionX, positionY, direction)
        @board[positionX][positionY].setCarDirection(direction)
    end

    def setActualCarDirection(direction)
        for i in (1..@columns) do
            for j in (1..@rows) do
                if (@board[i][j].isTheWrapperEmpty() == false)
                    @board[i][j].setCarDirection(direction)

                end
            end
        end
    end

    def getCarPositon(positionX, positionY)
        return @board[positionX][positionY].getDirection()
    end

    def getCarDirection(positionX, positionY)
        return @board[positionX][positionY].getCarDirection()
    end

    def getCarFinalPosition()
        for i in (1..@columns) do
            for j in (1..@rows) do
                if (@board[i][j].isTheWrapperEmpty() == false)
                    return @board[i][j].getFinalPosition()
                end
            end
        end
        return false
    end

    def moveOnePostionCar()
        for i in (1..@columns) do
            for j in (1..@rows) do
                if (@board[i][j].isTheWrapperEmpty() == false)
                    move(i, j)
                end
            end
        end
    end

    def move(row, col)
        # if (isNotPresentOnTop(col, row))
        #     @board[row][col].changeWrapperStatus(true)
        #     @board[row][col - 1].changeWrapperStatus(false)
        case @board[row][col].getDirection()
        when 'arriba'
            @board[row][col].clearData()
            @board[row - 1][col].activate('arriba')
        when 'abajo'
            @board[row][col].clearData()
            @board[row + 1][col].activate('abajo')
        when 'derecha'
            @board[row][col].clearData()
            @board[row][col + 1].activate('derecha')
        when 'izquirda'
            @board[row][col].clearData()
            @board[row][col - 1].activate('izquirda')
        end
        
    end

end