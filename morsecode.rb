MORSE_CODE = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z',
  ' ' => ' '
}.freeze

def decode_char(char)
  MORSE_CODE[char]
end

def decode_word(str)
  words = str.split
  result = []
  words.each do |word|
    word_str = ''
    word_str += decode_char(word)
    result << word_str
  end
  result.join
end

def decode(morsecode)
  words = morsecode.strip.split('   ')
  decoded_words = []
  words.each do |word|
    decoded_word = ''
    word.split.each do |letter|
      decoded_word += decode_word(letter)
    end
    decoded_words << decoded_word
  end
  decoded_words.join(' ')
end

puts decode_char('.-')
puts decode_word('-- -.--')
puts decode('-- -.--   -. .- -- .')
# Output: "ruby on rails"
