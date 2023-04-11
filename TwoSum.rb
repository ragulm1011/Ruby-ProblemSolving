def isTwoSum(arr , k)
    (0...arr.length).each do |i|
        k1 = i+1;
        (k1...arr.length).each do |j|
            if(arr[i]+arr[j] == k)
                return [i,j]
            end
        end
    end
end    
arr = [2,1,3,4,5];
k = 6;
puts(isTwoSum(arr , k));