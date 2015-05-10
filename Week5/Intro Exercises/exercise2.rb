def NumberEncoding(str)

	array = "abcdefghijklmnopqrstuvwxyz" 
	new_array = array.split("")

#["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p",
#"q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

	str_array = str.split("")

#["j", "a", "j", "-", "a"]

	for i in 0..new_array.length()-1

		for j in 0..str_array.length()-1

			if str_array[j] == new_array[i]

			str_array[j] = i + 1

			end
		end

	end


  	print str_array.join

end

NumberEncoding("hello 45")
