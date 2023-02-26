# Chiffres only

# Fonctions utilisées
def is_digit(char)
	return char >= '0' && char <= '9'
end

def only_digits(str)
	for char in str.split('')
		return false if !is_digit(char)
	end
	return true
end

# Partie 1 : Gestion d'erreurs
if ARGV.length != 1
	puts "error"
	exit
end

# Partie 2 : Parsing
str = ARGV[0]

# Partie 3 : Résolution
result = only_digits(str)

# Partie 4 : Affichage
puts result
