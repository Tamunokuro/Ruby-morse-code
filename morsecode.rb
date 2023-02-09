MORSE_CODE = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
  ' ' => ' '
}.freeze

def decode_char(morsecode)
  words = morsecode.strip.split('   ')
  decoded_words = []
  words.each do |word|
    decoded_word = ''
    word.split.each do |letter|
      decoded_word += MORSE_CODE[letter]
    end
    decoded_words << decoded_word
  end
  decoded_words.join(' ')
end

puts decode_char('.-. ..- -... -.--   --- -.   .-. .- .. .-.. ...')
# Output: "ruby on rails"
