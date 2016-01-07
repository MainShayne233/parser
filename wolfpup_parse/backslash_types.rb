

# backslash leads a combination
def is_comb(latex, step)
	latex[step+1..step+5].join == "binom"
end

# backslash leads a fraction
def is_frac(latex, step)
	latex[step+1..step+4].join == "frac"
end

# backslash leads a >=
def is_geq(latex, step)
	latex[step+1..step+3].join == "geq"
end

# backslash leads an integral
def is_int(latex, step)
	latex[step+1..step+3].join == "int"
end

# backslash leads a <=
def is_leq(latex, step)
	latex[step+1..step+3].join == "leq"
end

# backslash leads left parantheses
def is_lpar(latex, step)
	latex[step+1..step+5].join == "left("
end

# backslash leads a limit
def is_lim(latex, step)
	latex[step+1..step+3].join == "lim"
end

# backslash leads a multiplication asterik
def is_multiply(latex, step)
	latex[step+1..step+4].join == "cdot"
end

# backslash leads a nthroot
def is_nthroot(latex, step)
	latex[step+1..step+7].join == "nthroot"
end

# backslash leads pi
def is_pi(latex, step)
	latex[step+1..step+2].join == "pi"
end

# backslash leads a product
def is_prod(latex, step)
	latex[step+1..step+4].join == "prod"
end

# backslash leads a right parantheses
def is_rpar(latex, step)
	latex[step+1..step+6].join == "right)"
end

# backslash leads a square root
def is_root(latex, step)
	latex[step+1..step+4].join == "sqrt"
end

#backslash leads a sum
def is_sum(latex, step)
	latex[step+1..step+3].join == "sum"
end

# backslash leads special text
def is_text(latex, step)
	latex[step+1..step+4].join == "text"
end