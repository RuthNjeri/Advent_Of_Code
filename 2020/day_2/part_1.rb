require 'pry'
def valid_passwords(input)
  valid_passwords = 0

  for validation in input
    lowest = validation[:lowest]
    highest = validation[:highest]
    password = validation[:password]
    letter = validation[:letter]
    letter_count = 0

    (0..password.length - 1).map do |index|
      if letter == password[index]
        letter_count += 1
      end
      if letter_count > highest
        break
      end
    end
    valid_passwords += 1 if letter_count >= lowest && letter_count <= highest
  end
  p valid_passwords
end

input = []

File.readlines('input.txt').each do |line|
          line.strip!
          input_array = line.split(' ')
          range = input_array[0].split('-')
          hash = {lowest: range.first.to_i,
                  highest: range.last.to_i,
                  letter: input_array[1].tr(':', ''),
                  password: input_array[2]}
          input << hash
end

valid_passwords(input)