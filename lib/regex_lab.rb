def starts_with_a_vowel?(word)
  !!word.match(/\b[AEIOUaeiou][a-z]+\b/)
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\b[\A+un]+\w+[\z+ing]*\b/)
end

def words_five_letters_long(text)
  text.scan(/\b[A-Za-z]{5}+\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  !!text.match(/\b[A-Z][a-z]+\w+[:punct:]\b/)
  !text.match(/\b[^A-Z][a-z]+\w+[:punct:]\b/)
end

def valid_phone_number?(phone)
  !!phone.match(/((\d{3}).((\d{3}).([0-9]{4})|(\d{7}))\b)|(\d{10})|([0-9]{10})/)
end
