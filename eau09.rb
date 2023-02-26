# Entre min et max

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

def is_less_than(nb1, nb2)
	return nb1 < nb2
end

def array_beetween(min, max)
	array = []
	for i in min..max-1
		array.push(i)
	end
	return array
end

def array_print(array)
	for element in array
		print "#{element} "
	end
	puts
end

# Partie 1 : Gestion d'erreurs
if ARGV.length != 2
	puts "error: bad number of arguments"
	exit
end

if !is_numeric(ARGV[0]) || !is_numeric(ARGV[1])
	puts "error: bad arguments"
	exit
end

# Partie 2 : Parsing
nb1 = ARGV[0].to_i
nb2 = ARGV[1].to_i

# Partie 3 : Résolution
array = []
if is_less_than(nb1, nb2)
	array = array_beetween(nb1, nb2)
else
	array = array_beetween(nb2, nb1)
end

# Partie 4 : Affichage
array_print(array)
