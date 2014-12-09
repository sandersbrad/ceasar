def ceasar_cipher(text,shift)
	alphabet = ("a".."z").to_a
	shifted_text = ""
	
	array = text.split('')

	array.each do |char|
		if alphabet.include?(char.downcase) == false
			shifted_text << char
		else alphabet.each do |letter|
			if char.downcase == letter
				index_new = alphabet.index(letter) + shift
				if index_new >= 26
					index_new %= 26
				end
				if char == char.upcase
					shifted_text << alphabet[index_new].upcase
				else
					shifted_text << alphabet[index_new]
				end
			end
		end
		end
	end
	puts shifted_text
end

input = "Keeps case and works with any number123 or symbol*(*&"

ceasar_cipher(input,80)



