def calc_method(int1, str, int2)
	answer = 0
	if str == "+"
		answer = int1 + int2
	elsif  str == "-"
		answer = int1 - int2
	elsif str == "*"
		answer = int1 * int2
	else str == "/"
		answer = int1 / int2
	end

	p answer
end

#calc_method(4, "+", 4)
#calc_method(4, "-", 4)
#calc_method(4, "*", 4)
#calc_method(4, "/", 4)

p "Please enter something calculation"
input = gets.chomp
new_input = input.split(' ')
int1 = new_input[0].to_i
str = new_input[1]
int2 = new_input[2].to_i

calc_method(int1, str, int2)