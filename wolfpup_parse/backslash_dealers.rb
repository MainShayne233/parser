def comb_dealer(latex, step)
	args = Array.new()
	args[0] = ""
	step += 6
	rbrack_cnt = 0
	while rbrack_cnt < 2
		step += 1
		package = ups_guy(latex, step)
		val = package[:val]
		if val == ")"
			rbrack_cnt += 1
			args[rbrack_cnt] = "" if rbrack_cnt < 2
		elsif !is_brack(val)
			args[rbrack_cnt] += val if val != "("
			step = package[:step]
		end
	end
	args.map!{|i| "(" + i + ")"}
	return {:val => '('+args.join(" choose ")+')', :step => step}
end

def frac_dealer(latex, step)
	args = Array.new()
	args[0] = ""
	step += 5
	rbrack_cnt = 0
	while rbrack_cnt < 2
		step += 1
		package = ups_guy(latex, step)
		val = package[:val]
		if val == ")"
			rbrack_cnt += 1
			args[rbrack_cnt] = "" if rbrack_cnt < 2
		elsif !is_brack(val)
			args[rbrack_cnt] += val if val != "("
			step = package[:step]
		end
	end
	args.map!{|i| "(" + i + ")"}
	return {:val => '('+args.join("/")+')', :step => step}
end

def int_dealer(latex, step)
	step += 4
	package = ['_','^'].include?(latex[step]) ? def_int_dealer(latex, step) : indef_int_dealer(latex, step)
	arg = package[:val]
	step = package[:step]
	return {:val => '('+arg+')', :step => step}
end




def pi_dealer(latex, step)
	step += 2
	{:val => '(pi)', :step => step}
end


def root_dealer(latex, step)
	step += 5
	package = latex[step] == "[" ? nth_root_dealer(latex, step) : sqrt_dealer(latex, step)
	arg = package[:val]
	step = package[:step]
	return {:val => '('+arg+')', :step => step}
end