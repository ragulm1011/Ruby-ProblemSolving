def revIt(num)
    res = 0;
    while num > 0 do
        last = num % 10;
        res = (res*10) + last
        num /= 10
    end
    return res;
end
num1 = 50101234
puts(revIt(num1));