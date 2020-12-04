def expense_report(input)
  expenses = input
  compliments = {}


  for expense in expenses
    if compliments[expense]
      return (2020 - expense) * expense
    else
      compliment = 2020 - expense
      compliments[compliment] = true
    end
  end
end

input = []

File.readlines('input_1.txt').each do |line|
          input << line.strip.to_i
end

p expense_report(input)
