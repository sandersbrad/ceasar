def ceasar_cipher (string, shift)
	shift %=26

	new_array = string.split('').map! do |x|
		 x.match(/[a-zA-Z]/) ? x = x.ord : x

		 if x.class == Fixnum && (x <= 90 && x > 90 - shift || x > 122- shift)
		 	x = x + shift - 26
		 elsif x.class == Fixnum
		 	x = x + shift
		 else
		 	x
		 end

		 x.class == Fixnum ? x.chr : x
	end
	puts new_array.join
end

ceasar_cipher("Does this work with 9098?",1000000000000)