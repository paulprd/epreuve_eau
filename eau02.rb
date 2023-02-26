# Arguments à l'envers

# Fonctions utilisées
def reverse_arguments_print(array)
	for element in array
		puts element
	end
end

def array_reverse(array)
	reverse_array = []
	for i in 1..array.length
		reverse_array.push(array[-i])
	end
	return reverse_array
end

# Partie 1 : Gestion d'erreurs
if ARGV.length == 0
	puts "error: no arguments given"
	exit
end

# Partie 2 : Parsing
arguments = ARGV

# Partie 3 : Résolution
reverse_arguments = array_reverse(arguments)

# Partie 4 : Affichage
reverse_arguments_print(reverse_arguments)
