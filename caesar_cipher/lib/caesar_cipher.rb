class CaesarCipher
	def caesarify(string, shift)
		cipher = ""
		string.split('').each { |char|
			ascii_val = char.ord
			puts ascii_val
			# if lowercase
			if (97 <= ascii_val and ascii_val <= 122)
				ascii_val += shift
				remainder = ascii_val - 122
				if (remainder > 0)
					ascii_val = 97 + remainder - 1
				end
			# if capital
			elsif (65 <= ascii_val and ascii_val <= 90)
				ascii_val += shift
				puts ascii_val
				remainder = ascii_val - 90
				if (remainder > 0)
					ascii_val = 65 + remainder - 1
				end
			end
			cipher += ascii_val.chr
		}
		cipher
	end
end