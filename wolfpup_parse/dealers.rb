def brack_dealer(latex,step)
	val = latex[step] == "{" ? "(" : ")"
	return {:val => val, :step => step}
end

def backslash_dealer(latex,step)
	types = ['comb', 'frac', 'geq', 'integral', 'sqrt']
	for t in types
		if send("is_#{t}", latex, step)
			return send("#{t}_dealer", latex, step)
		end
	end
end

def norm_dealer(latex,step)
	return {:val => latex[step], :step => step}
end

def expo_dealer(latex, step)
	arg = ""
	step += 1
	if latex[step] == '{'
		until latex[step] == '}'
			package = ups_guy(latex, step)
			val = package[:val]
			if val != '}'
				arg += val if val != '('
				step = package[:step]
			end
			step += 1
		end
	else
		arg = latex[step]
	end
	return {:val => '^'+'('+arg+')', :step => step}
end