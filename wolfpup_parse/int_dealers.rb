def indef_int_dealer(latex, step)
	arg = ''
	until latex[step] == 'd'
		package = ups_guy(latex, step)
		val = package[:val]
		arg += val if val != 'd'
		step = package[:step]
		step += 1
	end
	step += 1
	hash = {:val => 'integral '+ arg, :step => step}
	return hash
end

def int_limits_dealer(latex, step)
	args = Array.new()
	args[0] = ''
	args[1] = ''
	lim_cnt = 0
	flip = latex[step] == '^'
	step += 1
	while lim_cnt < 2
		if latex[step] == '{'
			until latex[step] == '}'
				package = ups_guy(latex,step)
				val = package[:val]
				args[lim_cnt] += val if val != '}'
				step = package[:step]
				step += 1
			end
			lim_cnt += 1
			step += 1 if lim_cnt < 2
		else
			args[lim_cnt] = latex[step]
			lim_cnt += 1
			step += 1 if lim_cnt < 2
		end
		step += 1
	end
	args.reverse! if flip
	hash = {:val => '('+args[0]+','+args[1]+')', :step => step}
end

def def_int_dealer(latex, step)
	arg = ''
	package = int_limits_dealer(latex, step)
	lim = package[:val]
	step = package[:step]
	until latex[step] == 'd'
		package = ups_guy(latex, step)
		val = package[:val]
		arg += val if val != 'd'
		step = package[:step]
		step += 1
	end
	step += 1
	hash = {:val => 'integral '+ lim + ' (' + arg + ')', :step => step}
	return hash
end
