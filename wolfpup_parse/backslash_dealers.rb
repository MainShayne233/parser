

def frac_dealer(latex, step)
	args = Array.new()
	args[0] = ""
	step += 5
	rbrack_cnt = 0
	while rbrack_cnt < 2
		step += 1
		package = ups_guy(latex, step)
		print "\n\npackages: #{package} args: #{args}\n\n"
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
	return {:val => args.join("/"), :step => step}
end