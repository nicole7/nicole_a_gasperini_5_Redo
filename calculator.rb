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
			p "Not here"
			return false
		end
	end
end

exp = "3 + a"
checker = check_input(exp)
p checker

#calc_method(4, "+", 4)
#calc_method(4, "-", 4)
#calc_method(4, "*", 4)
#calc_method(4, "/", 4)

input = " "
hash_answer = {}
counter = 0

while input != "done"
	p "Please enter something to calculate"
	input = gets.chomp
		if input == "done"
			puts "#{counter} calculations performed:"
			break
		else
			new_input = input.split(' ')

			int1 = new_input[0].to_i
			str = new_input[1]
			int2 = new_input[2].to_i

			#calc_method(int1, str, int2)

			hash_answer[input] = calc_method(int1, str, int2)
		end

counter += 1

end

hash_answer.each do |exp, ans|
	puts "#{exp} = #{ans}"
end

