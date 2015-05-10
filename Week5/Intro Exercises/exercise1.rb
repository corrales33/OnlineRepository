def DashInsertII(num)
	array = []
	array = num.to_s.split(//)

	for i in 0..array.length()-1

			if array[i].to_i.odd? && array[i+1].to_i.odd?

				array.insert(i+1, "-")

			elsif array[i].to_i.even? && array[i+1].to_i.even?

				array.insert(i+1, "*")
			end

	end
	
	print array

end

DashInsertII(56647304)