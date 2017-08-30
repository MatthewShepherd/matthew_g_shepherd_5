arr_of_calcs = []

def calculate(x, op, z)
	
	arr_of_calcs << x.send(op,z)
    arr_of_calcs << "="
    calc_result = x.send(op,z)
    arr_of_calcs << calc_result
end

calculate(4, "+", 3)
calculate(1, '-', 1)
calculate(5, '*', 5)
calculate(10, '/', 2)


loop do
p "Enter your calculations or type done to exit."
calc_string = gets.chomp
break if calc_string == "done"
p calc_array = calc_string.split(' ')
a = calc_array[0].to_i
b = calc_array[1]
c = calc_array[2].to_i
calculate(a, b, c)
end

p "(arr_of_calcs.length) calculations performed:"
p arr_of_calcs