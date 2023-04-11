def printMatrix(matrix)
    for i in 0...matrix.length
        for j in 0...matrix[i].length
            print("#{matrix[i][j]} ")
        end
        puts()
    end
end

def setZeros(matrix)
    rowArr = []
    colArr = []
    for i in 0...matrix.length
        for j in 0...matrix[i].length
            if matrix[i][j] == 0
                rowArr.push(i);
                colArr.push(j);
            end
        end
    end

    for i in 0...rowArr.length
        currRow = rowArr[i]
        for j in 0...matrix[currRow].length
            matrix[currRow][j] = 0
        end
    end

    for i in 0...colArr.length
        currCol = colArr[i]
        for j in 0...matrix.length
            matrix[j][currCol] = 0
        end
    end
end



matrix = [[1,1,1],[1,0,1],[1,1,1]]
printMatrix(matrix);
setZeros(matrix)
puts()
printMatrix(matrix)