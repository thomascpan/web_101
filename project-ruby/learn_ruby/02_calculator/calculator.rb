def add(x, y)
	return x+y
end

def subtract(x, y)
	return x-y
end 

def sum(parameter)
	sum = 0 
	parameter.each {|x| sum +=x}
	return sum 
end

def multiply(parameter)
	product = 1
	parameter.each {|x| product*=x}
	return product
end

def power(x, y)
	return x**y 
end

def factorial(x)
	factor = 1
	list = []
	while x > 1
		list.push(x)
		x-=1
	end 
	list.each {|x| factor*=x}
	return factor 
end

