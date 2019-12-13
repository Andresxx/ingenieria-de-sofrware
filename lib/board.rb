require './lib/robot'

class Board
    def initialize(cols, rows)
        @cols = cols
        @rows = rows
        @listOfRobots = Array[]
    end

    def gerCols()
        return @cols
    end
    
    def gerRows()
        return @rows
    end

    def createNewRobot(coorX, coorY, direction)
        @listOfRobots.push(Robot.new(coorX,coorY,direction,@cols,@rows))
    end

    def getListOfRobots()
        return @listOfRobots
    end

    def getRobotFinalPosition(roborNumber)
        if (@listOfRobots.length >= roborNumber) && (roborNumber > 0)
            position = roborNumber - 1
            return @listOfRobots[position].getFinalPosition()
        end
        return 'no-robot'
    end

    def moveRobot(roborNumber)
        if (@listOfRobots.length >= roborNumber) && (roborNumber > 0)
            position = roborNumber - 1
            @listOfRobots[position].move()
        end
        return 'no-robot'
    end

    def rotateRobot(roborNumber, direction)
        if (@listOfRobots.length >= roborNumber) && (roborNumber > 0)
            position = roborNumber - 1
            @listOfRobots[position].rotate(direction)
        end
        return 'no-robot'
    end

    def robotSingleMove(roborNumber, movements)
        if (@listOfRobots.length >= roborNumber) && (roborNumber > 0)
            position = roborNumber - 1
            @listOfRobots[position].robotMovement(movements)
        end
        return 'no-robot'
    end 
end