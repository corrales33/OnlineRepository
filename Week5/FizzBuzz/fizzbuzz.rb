def my_function (x,y)
	result = ''

    for a in x[0] .. x[1]
    	compr = false
    	for i in 0 .. y.length-1
        	if remainder_n(a,y[i][0])
        		result += y[i][1]
				compr = true
			end	
		end

		if compr == false
			puts a
		else
			puts result
		end
		result = ''
	end

end

def remainder_n k,n
    k % n == 0
end

my_function([1,105], [[3,"Fizz"],[5, "Buzz"], [7, "Woof"]])