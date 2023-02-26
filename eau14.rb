# Par ordre ascii

# Fonctions utilisées
def array_print(array)
	for element in array
		print "#{element} "
	end
	puts
end

def string_less_than(str1, str2)
	s1 = str1.split('')
	s2 = str2.split('')
	s1_len = s1.length
	s2_len = s2.length

	i = 0
	while i < s1_len && i < s2_len
		if s1[i] < s2[i]
			return true
		elsif s1[i] > s2[i]
			return false
		else
			if i == s1_len && i != s2_len
				return true
			else
				return false
			end
		end
	end
end

def my_select_sort(array)
	result = []
	for element in array
		result.push(element)
	end

	len = result.length
	for i in 0..len-2
		min = result[i]
		index_min = i
		for j in i+1..len-1
			if string_less_than(result[j], min)
				min = result[j]
				index_min = j
			end
		end
		tmp = result[i]
		result[i] = result[index_min]
		result[index_min] = tmp
	end

	return result
end

# Partie 1 : Gestion d'erreurs
if ARGV.length < 2
	puts "error: not enough arguments"
	exit
end

# Partie 2 : Parsing
array = ARGV

# Partie 3 : Résolution
result = my_select_sort(array)

# Partie 4 : Affichage
array_print(result)