def printPascalsTriangle(rows)
    arr = Array.new()
    arr[0] = [1];
    

    for i in 1...rows
        tempArr = Array.new();
        for j in 0..i
            if(j == 0 or j == i)
                tempArr.push(1);
            else
                num1 = arr[i-1][j-1];
                num2 = arr[i-1][j];
                tempArr.push(num1 + num2);
            end
        end
        arr.push(tempArr);
    end

    for i in 0...arr.length
        for j in 0...arr[i].length
            print("#{arr[i][j]} ")
        end
        puts()
    end
        
end
rows = 5;
printPascalsTriangle(rows);