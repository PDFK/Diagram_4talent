# README

2. Según el siguiente arreglo de hashes.
USERS = [
{name: “Juan”, country: “Chile”, age: 30},
{name: “Pedro”, country: “Argentina”, age: 15},
{name: “Manuel”, country: “Perú”, age: 26},
{name: “Jose”, country: “Ecuador”, age: 22},
]
a) Crear un método en RoR que ordene a los usuarios de forma alfabetica según su
país.
b) Crear un método en RoR que devuelva el nombre del usuario con menor edad.

def sort_by_country array_of_hash
	@new_array = array_of_hash.sort_by { |element| element[:country] }
end

def find_user_younger array_of_hash
	@new_array = array_of_hash.min { |a,b| a[:age] <=> b[:age] }
end