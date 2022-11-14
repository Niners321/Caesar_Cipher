def caesar_cipher(string, shift)
  result = ''
  string.each_char do |char|
    #cipher only if char is a letter
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      new_value = char.ord + shift
      new_value -= 26 if (new_value > 91 && char.ord < 91) || new_value > 122
        result += new_value.chr
      else
        result += char
      end
    end
    result
  end

puts (caesar_cipher('hello!', 5))