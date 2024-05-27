# 1. method with no arguument 
# 2.method with arguument 
# 3.method with default arguument
def method_with_no_arg
	length =10
	width =20
	puts "#{length*width}"
end
def method_with_arg(length,width)
	length*width	
end
def method_with_default_arguument(length=10,width=20)
	length*width
end
method_with_no_arg()
result = method_with_arg(10,10)
puts "#{result}"
puts method_with_default_arguument(20,20)