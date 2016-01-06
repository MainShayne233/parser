require_relative 'char_types'
require_relative 'dealers'
require_relative 'backslash_types'
require_relative 'backslash_dealers'



def ups_guy(latex,step)
	chr = latex[step]
	destinations = ['brack', 'backslash', 'norm']
	for d in destinations
		if send("is_#{d}", chr)
			return send("#{d}_dealer", latex, step)
		end
	end
end





def main_arg(latex)
	args = Array.new()
	latex = latex.split(//)
	step = 0
	while step < latex.count
		package = ups_guy(latex,step)
		args.push(package[:val])
		step = package[:step]
		step += 1
	end
	return args.join
end

puts main_arg('\frac{.1}{x}')