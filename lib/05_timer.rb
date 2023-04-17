def time_string(num)
    num = Time.at(num).utc
    return num.strftime("%H:%M:%S")
end