# String dans string

# Fonctions utilisées
def is_numeric(str)
	# str = str.split('')
	# return false if str[0] != '-' || str[0] < 'a' || str[0] > '9'
	# for char in str
	# 	return false if char < '0' || char > '9'
	# end
	# return true
	len = str.length
	return str.match(/[0-9]{#{len}}/) || str.match(/\-[0-9]{#{len}-1}/)
end

def needle_in_haystack(haystack, needle)
	# return true if haystack.match(/#{needle}/)
	# return false
	h = haystack.split('')
	n = needle.split('')
	for i in 0..(h.length-n.length)
		is_in = true
		for j in 0..(n.length-1)
			if haystack[i+j] != needle[j]
				is_in = false
			end
		end
		return is_in if is_in
	end
	return false
end

# Partie 1 : Gestion d'erreurs
if ARGV.length != 2 || is_numeric(ARGV[0]) || is_numeric(ARGV[1])
	puts "error"
	exit
end

# Partie 2 : Parsing
haystack = ARGV[0]
needle = ARGV[1]

# Partie 3 : Résolution
is_in = needle_in_haystack(haystack, needle)

# Partie 4 : Affichage
puts is_in
