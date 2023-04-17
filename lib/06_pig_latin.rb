# def translate(s)
#     vowels = ["a", "e", "i", "o", "u"]
#     consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "y", "z"]
#     if vowels.include?(s[0])
#         s << "ay"
#     elsif s.start_with?("sch")
#         s = s << "schay"
#         s = s[3..-1]
#     elsif s.start_with?("qu")
#         s = s << "quay"
#         s = s[2..-1]
#     elsif consonants.include?(s[0]) and consonants.include?(s[1]) and consonants.include?(s[2])
#         s << s[0..2]
#         s << "ay"
#         s = s[3..-1]
#     elsif consonants.include?(s[0]) and consonants.include?(s[1])
#         s << s[0..1]
#         s << "ay"
#         s = s[2..-1]
#     elsif consonants.include?(s[0])
#         s << s[0]
#         s << "ay"
#         s = s[1..-1]
#     end
# end


##### for ref:
def translate(sent)
    vowels = %w{a e i o u}
    sent.gsub(/(\A|\s)\w+/) do |str|
            str.strip!
        while not vowels.include? str[0] or (str[0] == 'u' and str[-1] == 'q')
            str += str[0]
            str = str[1..-1]
        end
        str  = ' ' + str + 'ay'
    end.strip
end