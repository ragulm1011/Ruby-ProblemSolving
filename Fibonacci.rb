def fib(num,hsh)
    if(hsh[num] != -1)
        return hsh[num]
    end

    if(num == 0 or num == 1)
        return num
    end

    return hsh[num] = fib(num-1 , hsh)+fib(num-2 , hsh)
end


num1 = 5;
hsh = Hash.new(-1)
puts(fib(num1,hsh));

