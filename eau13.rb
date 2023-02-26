# Tri par selection

# Fonctions utilisées
def array_print(array)
	for element in array
		print "#{element} "
	end
	puts
end

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
			if result[j] < min
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

if !array_is_numeric(ARGV)
	puts "error: bad arguments"
	exit
end

# Partie 2 : Parsing
numbers = to_int_array(ARGV)

# Partie 3 : Résolution
result = my_select_sort(numbers)

# Partie 4 : Affichage
array_print(result)