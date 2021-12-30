def split_phrase(phrase)
  phrase.split("")
end

def cypher(phrase, shifted_num)
  puts phrase
  cypher = []
  alphabet = split_phrase("abcdefghijklmnopqrstuvwxyz")
  phrase_array = split_phrase(phrase)
  phrase_array.each do |v|
    if (/[[:alpha:]]/.match?(v) == false)
      cypher.push(v)
    end
    alphabet.each_with_index do |av, ai|
      if v == alphabet[ai]
        if ((ai+shifted_num) >= alphabet.length)
          new_shifted_num = shifted_num - (alphabet.length - ai)
          ai = 0
          cypher.push(alphabet[ai+new_shifted_num])
        else
          cypher.push(alphabet[ai+shifted_num])
        end
      end
    end
  end
  new_phrase = cypher.join("")
  puts new_phrase
end

cypher("yo, zac, how are you?", 5)