# `require 'pry'

# def expense_report(input)
#   expenses = input
#   compliments = {}
#   expenses_size  = expenses.size - 1

#   (0..expenses_size).map do |index|
#     two_sum = 2020 - expenses[index]
#     binding.pry
#     (index + 1..expenses_size).map do |second_index|
#       compliment = two_sum - expenses[second_index]
#       binding.pry
#       if compliments[compliment]
#         return expenses[index] * expenses[second_index] * compliment
#       else
#         compliments[compliment] = true
#       end
#     end
#   end
# end

# input = [1721,
#   979,
#   366,
#   299,
#   675,
#   1456]

# # File.readlines('input_1.txt').each do |line|
# #           input << line.strip.to_i
# # end

# p expense_report(input)
