require 'pry'
def valid_passwords(input)
  valid_passwords = 0

  for validation in input
    position_1 = validation[:position_1]
    position_2 = validation[:position_2]
    password = validation[:password]
    letter = validation[:letter]

    first_letter = password[position_1 - 1]
    second_letter = password[position_2 - 1]

    if (letter == first_letter) ^ (letter == second_letter)
      valid_passwords += 1
    end
  end
  p valid_passwords
end

input = []

File.readlines('input.txt').each do |line|
          line.strip!
          input_array = line.split(' ')
          range = input_array[0].split('-')
          hash = {position_1: range.first.to_i,
                  position_2: range.last.to_i,
                  letter: input_array[1].tr(':', ''),
                  password: input_array[2]}
          input << hash
end

valid_passwords(input)