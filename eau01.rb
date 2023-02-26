# Combinaisons de 2 nombres

# Fonctions utilisées
def array_print(array)
	len = array.length
	for i in 0..len-1
		for j in 0..1
			if array[i][j] <= 9
				print "0"
			end
			print "#{array[i][j]}"
			if j == 0
				print " "
			end
		end

		if i < len-1
			print ", "
		else
			puts
		end
	end
end

def array_generate
	array = []

	for i in 0..99
		for j in i+1..99
			array.push([i, j])
		end
	end

	return array
end

# Partie 1 : Gestion d'erreurs
# ...

# Partie 2 : Parsing
# ...

# Partie 3 : Résolution
numbers = array_generate

# Partie 4 : Affichage
array_print(numbers)
