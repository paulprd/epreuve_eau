# Suite de fibonacci

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

def array_fibonacci(n)
	fib = [0, 1]
	return fib if n < 2

	for i in 2..n
		fib.push(fib[i-1] + fib[i-2])
	end
	return fib
end

# Partie 1 : Gestion d'erreurs
if ARGV.length != 1 || !is_numeric(ARGV[0]) || ARGV[0].to_i < 0
	puts "-1"
	exit
end

# Partie 2 : Parsing
ind = ARGV[0].to_i

# Partie 3 : Résolution
fibonacci = array_fibonacci(ind)

# Partie 4 : Affichage
puts fibonacci[ind]

