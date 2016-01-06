def brack_dealer(latex,step)
	val = latex[step] == "{" ? "(" : ")"
	return {:val => val, :step => step}
end

def backslash_dealer(latex,step)
	types = ['comb', 'frac', 'geq', 'integral']
	for t in types
		if send("is_#{t}", latex, step)
			return send("#{t}_dealer", latex, step)
		end
	end
end

def norm_dealer(latex,step)
	return {:val => latex[step], :step => step}
end