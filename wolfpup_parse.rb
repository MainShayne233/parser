def parse(latex)
	tail = ''
	latex = latex.split(//)
	index = 0
	while index < latex.count
		chr = latex[index]
		if chr == "\\"
			puts index
		end
		index += 1
	end
end

parse('\frac{1}{2}+x^3-\lim{3}')


