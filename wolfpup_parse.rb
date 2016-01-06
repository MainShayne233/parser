# is the char an integer?
def is_int(str)
	(0..9).to_a.map!{|i| i.to_s}.include?(str)
end

# is the char a standard operator?
def is_op(str)
	['+', '-', '^', '=', '<', '>'].include?(str)
end

# is the char the beginning of a function or special value?
def is_func(str)
	str == "\\"
end

# is the char a decimal point?
def is_dec(str)
	str == "."
end

# is the char a variable?
def is_var(str)
	("a".."z").to_a.include?(str)
end

def is_lbracket(str)
	str == "{"
end

def is_rbrack(str)
	str == "}"
end