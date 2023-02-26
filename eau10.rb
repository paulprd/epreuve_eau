# Index wanted

# Fonctions utilisées
def extract_array(array)
	result = []
	for i in 0..array.length-2
		result.push(array[i])
	end
	return result
end

def find_index(haystack, needle)
	n = needle.split('')
	n_len = n.length
	for i in 0..haystack.length-1
		h = haystack[i].split('')
		if h.length == n_len
			same = true
			for j in 0..n_len
				if h[j] != n[j]
					same = false
				end
			end
			
			if same
				return i
			end
		end
	end
	return -1
end

# Partie 1 : Gestion d'erreurs
if ARGV.length < 2
	puts "error: not enough arguments"
	exit
end

# Partie 2 : Parsing
haystack = extract_array(ARGV)
needle = ARGV[ARGV.length-1]

# Partie 3 : Résolution
result = find_index(haystack, needle)

# Partie 4 : Affichage
puts result
