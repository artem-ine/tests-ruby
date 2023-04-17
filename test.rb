def time_string(num)
    t = Time.new(2023, 04, 17, 00, 00, num)
    t + (00 * 00 * num)
    return t.strftime("%H:%M:%S")
end

puts time_string(66)