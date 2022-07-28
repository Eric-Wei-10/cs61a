def summation(n, term):
	i = 0
	sum = 0
	while i < n:
		i = i + 1
		sum = sum + term(i)
	return sum

def pi_term(x):
	return 8 / ((4*x - 3) * (4*x - 1))

def pi_sum(n):
	return summation(n, pi_term)

def improve(update, close, guess=1):
	while not close(guess):
		guess = update(guess)
	return guess

def my_update(x):
	return x - (x**3 - x + 1) / (3*x*x - 1)

def my_close(x):
	return abs(x ** 3 - x + 1) < 1e-6

