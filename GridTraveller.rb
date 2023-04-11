def findWays(row , col)
    if(row == 1 and col == 1)
        return 1
    end

    if(row == 0 or col == 0)
        return 0
    end

    return findWays(row-1,col) + findWays(row , col-1)
end

m = 3;
n = 3;
puts(findWays(m,n));