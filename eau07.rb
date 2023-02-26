# Majuscule

# Fonctions utilisées
def capitalize(str)
	s = str.split('')
	for i in 0..(s.length-1)
		if i == 0
			if s[i].match(/[a-z]/)
				s[i] = s[i] = (s[i].ord - 32).chr
			end
		elsif (s[i-1] == ' ' || s[i-1] == '\t' || s[i-1] == '\n')
			if s[i].match(/[a-z]/)
				s[i] = s[i] = (s[i].ord - 32).chr
			end
		elsif s[i].match(/[A-Z]/)
			s[i] = s[i] = (s[i].ord + 32).chr
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
result = capitalize(str)

# Partie 4 : Affichage
puts result
