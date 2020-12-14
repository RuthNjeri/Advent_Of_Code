require 'pry'


# Compliments work better for two sum problems
def expense_report(input)
  expenses = input
  compliments = {}
  expenses_size  = expenses.size - 1

  (0..expenses_size).map do |index|
    two_sum = 2020 - expenses[index]
    (index + 1..expenses_size).map do |second_index|
      second_num = expenses[second_index]
      compliment = two_sum - second_num

      if compliments[second_num]
        return expenses[index] * second_num * compliment
      else
        compliments[compliment] = true
      end
    end
  end
end


# Pointers work better for three/four/five..sum problems
# but you need to sort the numbers first

def expense_report_pointer(input)
  input.sort!


  # outer_pointer = 0

  # while outer_pointer != input.length - 1
  for outer_pointer in 0..input.length - 1
    lower_pointer = outer_pointer + 1
    higher_pointer = input.length - 1
    two_sum = 2020 - input[outer_pointer]

    while higher_pointer > lower_pointer
      pointer_sum = input[higher_pointer] + input[lower_pointer]
      if two_sum == pointer_sum
        return input[higher_pointer] * input[lower_pointer] * input[outer_pointer]
      elsif two_sum > pointer_sum
        lower_pointer += 1
      else
        higher_pointer -= 1
      end
    end
    # outer_pointer += 1
  end
end

# input = [1721,
#   979,
#   366,
#   299,
#   675,
#   1456]

input = []

File.readlines('input.txt').each do |line|
          input << line.strip.to_i
end

# p expense_report(input)
p expense_report_pointer(input)
