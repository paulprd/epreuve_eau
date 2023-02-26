# Majuscule sur deux

# Fonctions utilisées
def to_cap_pattern(str)
	s = str.split('')
	capitalize = true
	for i in 0..(s.length-1)
		if s[i].match(/[a-zA-Z]/)
			if capitalize && s[i].match(/[a-z]/)
				s[i] = (s[i].ord - 32).chr
			elsif !capitalize && s[i].match(/[A-Z]/)
				s[i] = (s[i].ord + 32).chr
			end
			capitalize = !capitalize
		end
	end
	return s.join('')
end

# Partie 1 : Gestion d'erreurs
if ARGV.length != 1
	puts "error"
	exit
end

# Partie 2 : Parsing
str = ARGV[0]

# Partie 3 : Résolution
result = to_cap_pattern(str)

# Partie 4 : Affichage
puts result
