

# is the char a bracker
def is_brack(str)
	['{', '}'].include?(str)
end

# is the char the beginning of a function or special value?
def is_backslash(str)
	str == "\\"
end

# is the char an integer or operator?
def is_norm(str)
	array = ('0'..'9').to_a + ("a".."z").to_a 
	array += ['+', '-', '=', '<', '>', '.', ',']
	array += ['[', ']']
	array.include?(str)
end

def is_space(str)
	str = ' '
end

def is_expo(str)
	str == '^'
end