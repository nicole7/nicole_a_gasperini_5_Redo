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

def check_input(exp)
	num_sym = "1234567890+-/* "
	new_exp = exp.split('')
	#p new_exp
	new_exp.each do |char|
		if !num_sym.include?(char)
			puts "Not valid input"
			return false
		end
	end
end

#calc_method(4, "+", 4)
#calc_method(4, "-", 4)
#calc_method(4, "*", 4)
#calc_method(4, "/", 4)

input = " "
hash_answer = {}
counter = 0

while input != "done"
	puts "Please enter something to calculate"
	input = gets.chomp
	checker = check_input(input)
		if input == "done"
			puts "#{counter} calculations performed:"
			break
		end
		if checker == false
			
		else	
			new_input = input.split(' ')

			int1 = new_input[0].to_i
			str = new_input[1]
			int2 = new_input[2].to_i

			hash_answer[input] = calc_method(int1, str, int2)
		end

counter += 1

end

hash_answer.each do |exp, ans|
	puts "#{exp} = #{ans}"
end

