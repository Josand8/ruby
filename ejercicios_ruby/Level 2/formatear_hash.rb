# 1. Definir un metodo llamado "format" que reciba un hash con una estructura determinada.
# 2. Convertir el hash en un string y imprimirlo.


def format(hash)
    puts "The product #{hash[:name]} with id #{hash[:id]} has a price of #{hash[:price]} for #{hash[:unit]}"
end

format({ name: "Arroz", id: 1, price: 12.99, unit: "kg" })

format({ name: "Leche", id: 2, price: 5.95, unit: "litro" })