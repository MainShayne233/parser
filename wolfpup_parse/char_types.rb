

# is the char a bracker
def is_brack(str)
	['{', '}'].include?(str)
end

# is the char a decimal point?
def is_dec(str)
	str == "."
end

# is the char the beginning of a function or special value?
def is_backslash(str)
	str == "\\"
end

# is the char an integer or operator?
def is_intop(str)
	(0..9).to_a.map!{|i| i.to_s}.include?(str) or ['+', '-', '=', '<', '>'].include?(str)
end

# is the char a variable?
def is_var(str)
	("a".."z").to_a.include?(str)
end