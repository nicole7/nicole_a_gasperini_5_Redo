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

calc_method(4, "+", 4)
calc_method(4, "-", 4)
calc_method(4, "*", 4)
calc_method(4, "/", 4)