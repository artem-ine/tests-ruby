def echo(string)
    string
end


def shout(string)
    string.upcase
end


def repeat(string, x = 2)
    arr = [string] * x
    return arr.join(" ")
end


def start_of_word(string, x = 0)
    string[0, x]
end


def first_word(string)
    string.split.first
end


def titleize(string)
    string.capitalize!
    little_words = ["and", "or", "the", "a"]
    return string.split(" ").map{|word| little_words.include?(word) ? word : word.capitalize}.join(" ")
end