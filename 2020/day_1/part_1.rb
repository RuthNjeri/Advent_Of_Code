def expense_report(input)
  expenses = input
  compliments = {}


  for expense in expenses
    compliment = 2020 - expense
    if compliments[expense]
      return compliment * expense
    else
      compliments[compliment] = true
    end
  end
end

input = []

File.readlines('input.txt').each do |line|
          input << line.strip.to_i
end

p expense_report(input)
