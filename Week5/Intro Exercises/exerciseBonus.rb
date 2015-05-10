def ArrayAddition(arr)
	largest = arr.sort.pop() 
    for i in 2..arr.length()-1
        temp_arr = arr.combination(i).to_a
        for j in 0..temp_arr.length()-1
        	sum = 0
            temp_arr[j].each do |number| sum += number
            end
            return true        if sum == largest
        end
        temp_arr = []
    end
    return false
end
 
puts ArrayAddition([1,2,3])