def ftoc(temp)
    temp = (temp - 32) / 1.8   # temp.to_f
    return temp.round()
end


def ctof(temp)
    (temp * 1.8 + 32)
end