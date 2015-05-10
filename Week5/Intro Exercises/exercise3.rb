def PalindromeTwo(str)
	string_letter = OnlyLetter(str)
	string_letter_right = string_letter
	string_letter_left = string_letter.reverse
	if string_letter_right == string_letter_left
		print true
	else 
		print false
	end
end

def OnlyLetter(string)
	array_string = string.downcase.split('')
	alphabet = 'abcdefghijklmnopqrstuvwxyz'
	array_alphabet = alphabet.split('')
	new_array = []
	for i in 0 .. array_string.length()-1
		for j in 0 ..  array_alphabet.length
			if  array_string[i] == array_alphabet[j]
				new_array << array_string[i]
			end
		end
	end
	new_array.join
end

OnlyLetter("Noel - sees Leon")