def divisors(n):
        return [1] + [x for x in range(2, n) if n % x == 0]

def perimeter(h, w):
	return 2 * (h + w)

def minimum_perimeter(area):
	heights = divisors(area)
	perimeters = [perimeter(h, area // h) for h in heights]
	return min(perimeters)
