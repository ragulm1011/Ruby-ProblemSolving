def isAnagram(str1 , str2)
    if str1.length != str2.length
        return false
    end

    str1 = str1.chars.sort.join
    str2 = str2.chars.sort.join
    
    return str1.eql?(str2)
end

puts(isAnagram("army","mary"));
