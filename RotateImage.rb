def rotateImage(matrix)
    for i in 0...matrix.length
        for j in i...matrix[i].length
            temp = matrix[i][j]
            matrix[i][j] = matrix[j][i]
            matrix[j][i] = temp
        end
    end

    for i in 0...matrix.length
        for j in 0...matrix[i].length/2
            temp = matrix[i][j];
            matrix[i][j] = matrix[i][matrix[i].length-1-j];
            matrix[i][matrix[i].length-1-j] = temp;
        end
    end
            



end


matrix = [[1,2,3],[4,5,6],[7,8,9]]

for i in 0...matrix.length
    for j in 0...matrix[i].length
        print("#{matrix[i][j]} ")
    end
    puts()
end

rotateImage(matrix)
puts() 
puts()


for i in 0...matrix.length
    for j in 0...matrix[i].length
        print("#{matrix[i][j]} ")
    end
    puts()
end