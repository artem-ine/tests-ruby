def translate(s)
    vowels = ["a", "e", "i", "o", "u"]
    consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "y", "z", "qu"]
    if vowels.include?(s[0])
        s << "bay"
    elsif s.start_with?("sch")
        s = s << "schay"
        s = s[3..-1]
    elsif s.start_with?("qu")
        s = s << "quay"
        s = s[2..-1]
    elsif consonants.include?(s[0]) or consonants.include?(s[0..2]) or consonants.include?(s[0..3])
        s << s[0]
        s << "ay"
        s = s[1..-1]
    end
end

# word beginning with vowel

# word beginning with consonant 

# word beginning with two consonants

# translates two words

# word beginning with three consonants

# counts 'sch' as a single phoneme

# counts 'qu' as a single phoneme

# counts 'qu' as a consonant even when it's preceded by a consonant

#translates many words

vowels = ["a", "e", "i", "o", "u"]
consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "y", "z"]


puts translate("quiet")