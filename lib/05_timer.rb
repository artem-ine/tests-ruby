def time_string(num)
    num = Time.new(2023, 04, 17, 00, 00, num)
    return num.strftime("%H:%M:%S")
end

