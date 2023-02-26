# Combinaisons de 3 chiffres

# Fonctions utilisées
def array_print(array)
	len = array.length
	for i in 0..len-1
		for j in array[i]
			print j
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

	for i in 0..7
		for j in i+1..8
			for k in j+1..9
				array.push([i,j,k])
			end
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
