# Difference minimum absolue

# Fonctions utilisées
def is_numeric(str)
    return Float(str) != nil
end

def array_is_numeric(array)
	for element in array
		if !is_numeric(element)
			return false
		end
	end
	return true
end

def to_int_array(array)
	result = []
	for element in array
		result.push(element.to_i)
	end
	return result 
end

def difference(nb1, nb2)
	if nb1 < nb2
		return nb2 - nb1
	else
		return nb1 - nb2
	end
end

def difference_min(array)
	min = difference(array[0], array[1])
	for nb1 in array
		for nb2 in array
			dif = difference(nb1, nb2)
			if dif != 0 && dif < min
				min = dif
			end
		end
	end
	return min
end

# Partie 1 : Gestion d'erreurs
if ARGV.length < 2
	puts "error: not enough arguments"
	exit
end

if !array_is_numeric(ARGV)
	puts "error: bad arguments"
	exit
end

# Partie 2 : Parsing
numbers = to_int_array(ARGV)

# Partie 3 : Résolution
result = difference_min(numbers)

# Partie 4 : Affichage
puts result
