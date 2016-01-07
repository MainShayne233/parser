def sqrt_dealer(latex, step)
	arg = ""
	until latex[step] == '}'
		package = ups_guy(latex,step)
		val = package[:val]
		if !(['(', ')'].include?(val))
			arg += val
			step = package[:step]
		end
		step += 1
	end
	return {:val => 'sqrt('+arg+')', :step => step}
end

def nth_root_dealer(latex, step)
	args = Array.new()
	args[0] = ""
	step += 1
	rbrack_count = 0
	until latex[step] == '}'
		package = ups_guy(latex,step)
		print "\n\n#{package}\n\n"
		val = package[:val]
		if val == ']'
			rbrack_count = 1
			args[1] = ""
		elsif !(['(', ')'].include?(val))
			args[rbrack_count] += val
			step = package[:step]
		end
		step += 1
	end
	val = args[0] + 'th' + ' root of ' + args[1]
	return {:val => val, :step => step}
end