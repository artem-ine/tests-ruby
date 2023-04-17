def who_is_bigger(a, b, c)
    if a == nil or b == nil or c == nil
        return "nil detected" 
    else
        letter = ["a", "b", "c"]
        num = Array[a, b, c]
        hash = letter.zip(num).to_h
        return "#{hash.max_by{|letter, num| num}[0]} is bigger"
    end
end


def reverse_upcase_noLTA(string)
    string.upcase!
    string = string.tr('LTA', '')
    return string.reverse
end


def array_42(array)
    array.include? 42
end


def magic_array(array)
    array.flatten!
    array = array.map{|a| a * 2}
    array.delete_if{|a| a % 3 == 0}
    array.uniq!
    return array.sort!
end