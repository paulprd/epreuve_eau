# Prochain nombre premier

# Fonctions utilisées
def is_numeric(str)
	# str = str.split('')
	# return false if str[0] != '-' || str[0] < 'a' || str[0] > '9'
	# for char in str
	# 	return false if char < '0' || char > '9'
	# end
	# return true
	len = str.length
	return str.match(/[0-9]{#{len}}/) || str.match(/\-[0-9]{#{len}-1}/)
end

def next_prime_number(n)
	nb = n
	is_prime = false
	while !is_prime
		is_prime = true
		nb += 1
		for i in 2..nb-1
			if nb % i == 0
				is_prime = false
				break
			end
		end
	end
	return nb
end

# Partie 1 : Gestion d'erreurs
if ARGV.length != 1 || !is_numeric(ARGV[0]) || ARGV[0].to_i < 0
	puts "-1"
	exit
end

# Partie 2 : Parsing
nb = ARGV[0].to_i

# Partie 3 : Résolution
next_prime = next_prime_number(nb)

# Partie 4 : Affichage
puts next_prime
