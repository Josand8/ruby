class Cine
    # setter y getters
    attr_accessor :name, :address, :movie_rooms
    
    def initialize(name, address)
        @name = name
        @address = address
        @movie_rooms = []
    end
    
    def create_movie_room(movie, price_ticket)
        # crear un movie_room
        movie_room = MovieRoom.new(movie, price_ticket)
        # adicionar el movie_room al array de movie_rooms
        movie_rooms.push(movie_room)
    end
    
    def movie_rooms_number
        movie_rooms.size
    end
end
    
    
class Movie
    # setters y getters
    attr_accessor :title, :duration, :min_age, :director
    
    def initialize(title, duration, min_age, director)
        @title = title
        @duration = duration
        @min_age = min_age
        @director = director
    end
end
    
class MovieRoom
    # class variable
    @@room_identifier = 0
    attr_accessor :movie, :price_ticket, :identifier, :seats
    
    def initialize(movie, price_ticket)
        # TODO: Check if movie is an object from Movie class
        # raise an exception
        @movie = movie
        @price_ticket = price_ticket
        @identifier = self.class.generate_identifier
        @seats = []
    end
    
    def generate_seats(columns, rows)
        # deberia recibir un numero de columnas y de filas, y generar la matriz de sillas
        # ej generate_seats(5, 5)  --> columnas 5, ['A', 'B', 'C', 'D', 'E']
                                   # --> filas 5 , [1,2,3,4,5]
                                   # ej sillas A1, A2, A3 ... B1, B2 ...
        columns_array = ('A'..'Z').to_a.take(columns)
        rows_array = (1..rows).to_a
    
        columns_array.each do |column|
            rows_array.each do |row|
                seat = Seat.new(column, row)
                seats.push(seat)
            end
        end
    end

    
    def assign_seat(user_to_sit)
        # 1- Obtener todas las sillas desocupadas
        seats_unoccupied = seats.select {|seat| !seat.occupied?}
        puts "Las sillas desocupadas son:"
        p seats_unoccupied
        # 2- si hay sillas desocupadas, randomicamente obtener una silla y pasar a 3
            # sino, mostrar un mensaje
        # 3- asignar la silla al usuario
        if seats_unoccupied.empty?
            puts "No hay sillas"
        else
            seat = seats_unoccupied.sample
            seat.user = user_to_sit
        end
    
    end
    
    def self.generate_identifier
        #@@room_identifier = @@room_identifier + 1
        @@room_identifier += 1
    end
end
    
class Seat
    # setters y getters
    # setter es un metodo que me permite asignar un valor a la variable de instancia
        # nombre_variable_instancia=
    # getter es un metodo que me permite obtener el valor de una variable de instancia
        # nombre_variable_instancia
    attr_accessor :column, :row, :user
    
    def initialize(column, row, user= nil)
        @column = column
        @row = row
        @user = user
    end
    
    def occupied?
        !user.nil?
    end
end
    
class User
    attr_accessor :name, :age, :money
    
    def initialize(name, age, money)
        @name = name
        @age = age
        @money = money
    end
end


class Menu
    attr_accessor :cines, :movies, :movie_rooms, :seats
    
    def initialize()
        @cines = []
        @movies = []
        @movie_rooms = []
        @seats = []
    end

    def all_cines
        x = 1
        cines.each do |posicion|
            print "#{x}. "
            p posicion
            x += 1
        end
    end

    def create_cine(name, address)
        cine = Cine.new(name, address)
        cines.push(cine)
    end

    def delete_cine(position)
        cines.delete_at(position = position - 1)
        puts"Cine numero #{position = position + 1} ha sido eliminado"
    end

    def all_movie_rooms
        x = 1
        movie_rooms.each do |posicion|
            print "#{x}. "
            p posicion
            x += 1
        end
    end

    def create_movie_room(movie, price_ticket)
        movie_room = MovieRoom.new(movie, price_ticket)
        movie_rooms.push(movie_room)
    end

    def all_movies
        x = 1
        movies.each do |posicion|
            print "#{x}. "
            p posicion
            x += 1
        end
    end

    def create_movie(title, duration, min_age, director)
        movie = Movie.new(title, duration, min_age, director)
        movies.push(movie)
    end
    
    def delete_movie(position)
        movies.delete_at(position= position - 1)
        puts "Pelicula numero #{position = position + 1} ha sido eliminado"
    end

    def generate_seats(columns, rows)
        columns_array = ('A'..'Z').to_a.take(columns)
        rows_array = (1..rows).to_a

        x = []
    
        columns_array.each do |column|
            rows_array.each do |row|
                seat = Seat.new(column, row)
                x.push(seat)
            end
        end
        seats.push (x)
    end

    def delete_seats(position)
        seats.delete_at(position= position - 1)
        puts "Asientos numero #{position = position + 1} han sido eliminados"
    end

    def all_seats
        x = 1
        seats.each do |posicion|
            print "#{x}. "
            p posicion
            puts ""
            x += 1
        end
    end

    def seats_squem(columns, rows)
        columns_array = ('A'..'Z').to_a.take(columns)
        rows_array = (1..rows).to_a

        z = columns_array[-1]

        rows_array.each do |row|
            columns_array.each do |column|
                x = column
                if x != z
                    print "| #{column}#{row} |"
                else
                    puts "| #{column}#{row} |\n"
                end
            end
        end
    end


    def main()

        mainloop = true

        while mainloop !=7

            menu_principal = <<~EOS
            ----------------------------------- BIENVENIDO AL MENU -----------------------------------
            1. Cines.
            2. Peliculas.
            3. Generar sillas.
            4. Salas de cine.
            5. Crear usuarios.
            6. Asignar usuarios al asiento.
            7. Salir.
            ------------------------------------------------------------------------------------------
            EOS
            puts menu_principal
            print "Digite el numero de la opción que desea elegir: "
            opcion = (gets.chomp).to_i

            
            case opcion
            when 1
                
                menu_cines = <<~EOS
                ------------------------------------- CINES -------------------------------------
                1. Ver cines.
                2. Crear cine.
                3. Eliminar cine.
                4. Atras.
                ---------------------------------------------------------------------------------
                EOS
                puts menu_cines
                print "Digite el numero de la opción que desea elegir: "
                

                opcion = (gets.chomp).to_i

                while opcion !=4
                    case opcion
                    when 1
                        puts "------------------------------------- VER CINES -------------------------------------"
                        self.all_cines

                        puts "--------------------------------------------------------------------------------------"
                        opcion = 4
                    when 2

                        puts "------------------------------------- CREAR CINE -------------------------------------"

                        print "Por favor escriba el nombre del cine: "
                        c_name = (gets.chomp).to_s

                        print "Por favor escriba la dirección del cine: "
                        c_address = (gets.chomp).to_s

                        self.create_cine(c_name, c_address)

                        puts "El nombre de su cine es: #{c_name} y esta ubicado en la: #{c_address}"
            
                        puts "--------------------------------------------------------------------------------------"
                        opcion = 4
                    when 3
                        puts "------------------------------------- ELIMINAR CINE -------------------------------------"
                        self.all_cines

                        print "Digite el numero del cine que desea eliminar: "
                        eliminar = (gets.chomp).to_i

                        self.delete_cine(eliminar)

                        puts "--------------------------------------------------------------------------------------"
                        opcion = 4
                    else
                        puts "------------------------------------- SALIENDO -------------------------------------"
                        opcion = 4
                    end
                end
    
            when 2
                menu_movies = <<~EOS
                ------------------------------------- PELICULAS -------------------------------------
                1. Ver peliculas.
                2. Crear peliculas.
                3. Eliminar peliculas.
                4. Atras.
                -------------------------------------------------------------------------------------
                EOS
                puts menu_movies
                print "Digite el numero de la opción que desea elegir: "
                

                opcion = (gets.chomp).to_i

                while opcion !=4
                    case opcion
                    when 1
                        puts "------------------------------------- VER PELICULAS -------------------------------------"
                        self.all_movies

                        puts "--------------------------------------------------------------------------------------"
                        opcion = 4
                    when 2
                        puts "----------------------------------- CREAR PELICULA -----------------------------------"

                        print "Por favor escriba el nombre de la pelicula: "
                        m_name = (gets.chomp).to_s

                        print "Por favor escriba la duración de la pelicula: "
                        m_duration = (gets.chomp).to_s

                        print "Por favor escriba la edad minima para ver la pelicula: "
                        m_minage = (gets.chomp).to_i

                        print "Por favor escriba el nombre del director: "
                        m_director = (gets.chomp).to_s

                        self.create_movie(m_name, m_duration, m_minage, m_director)

                        puts "El nombre de su pelicula es: #{m_name}, tiene una duración de: #{m_duration} horas, la edad minima para verla es de: #{m_minage} y el nombre del director es: #{m_director}"
                
                        puts "--------------------------------------------------------------------------------------"

                        opcion = 4

                    when 3
                        puts "------------------------------------- ELIMINAR PELICULA -------------------------------------"
                        self.all_movies

                        print "Digite el numero de la pelicula que desea eliminar: "
                        eliminar = (gets.chomp).to_i

                        self.delete_movie(eliminar)

                        puts "--------------------------------------------------------------------------------------"
                        opcion = 4
                    else
                        puts "------------------------------------- SALIENDO -------------------------------------"
                        opcion = 4
                    end
                end
            when 3
                menu_seats = <<~EOS
                ------------------------------------- SILLAS -------------------------------------
                1. Ver sillas.
                2. Crear sillas.
                3. Eliminar sillas.
                4. Atras.
                -----------------------------------------------------------------------------------------
                EOS
                puts menu_seats
                print "Digite el numero de la opción que desea elegir: "
                
                opcion = (gets.chomp).to_i

                while opcion !=4
                    case opcion
                    when 1
                        puts "------------------------------------- VER SILLAS -------------------------------------"
                        self.all_seats

                        puts "--------------------------------------------------------------------------------------"
                        opcion = 4
                    when 2
                        puts "----------------------------------- GENERAR SILLAS -----------------------------------"

                        print "Por favor escriba la cantidad de columnas: "
                        n_columns = (gets.chomp).to_i
        
                        print "Por favor escriba la cantidad de filas: "
                        n_rows = (gets.chomp).to_i
        
                        self.generate_seats(n_columns, n_rows)

                        self.seats_squem(n_columns, n_rows)

        
                        puts "--------------------------------------------------------------------------------------"

                        opcion = 4
                    when 3
                        puts "------------------------------------- ELIMINAR SILLAS -------------------------------------"
                        self.all_seats

                        print "Digite el numero de los asientos que desea eliminar: "
                        eliminar = (gets.chomp).to_i

                        self.delete_seats(eliminar)

                        puts "--------------------------------------------------------------------------------------"
                        opcion = 4
                    else
                        puts "------------------------------------- SALIENDO -------------------------------------"
                        opcion = 4
                    end
                end

            when 4
                menu_movie_rooms = <<~EOS
                ------------------------------------- SALAS DE CINE -------------------------------------
                1. Ver salas de cine.
                2. Crear salas de cine.
                3. Asignar salas de cine
                4. Eliminar salas de cine.
                5. Atras.
                -----------------------------------------------------------------------------------------
                EOS
                puts menu_movie_rooms
                print "Digite el numero de la opción que desea elegir: "
                

                opcion = (gets.chomp).to_i

                while opcion !=5
                    case opcion
                    when 1
                        puts "------------------------------------- VER SALAS DE CINE -------------------------------------"
                        self.all_movie_rooms

                        puts "--------------------------------------------------------------------------------------"
                        opcion = 5
                    when 2
                        puts "-------------------------------- CREAR SALAS DE CINE ---------------------------------"
                        puts "Estas son las peliculas disponibles"
                        self.all_movies

                        print "Digite el numero de la pelicula que desea elegir: "
                        select_movie = (gets.chomp).to_i

                        select_movie = select_movie - 1
                        send_movie = movies[select_movie]

                        print "Por favor escriba el valor de la entrada: "
                        price_ticket = (gets.chomp).to_i

                        self.create_movie_room(send_movie, price_ticket)

                        puts "--------------------------------------------------------------------------------------"

                        opcion = 5
                    when 3
                        puts "------------------------------------- ASIGNAR SALAS DE CINE -------------------------------------"

                        puts "Estos son los esquemas de asientos disponibles"
                        self.all_seats

                        print "Digite el numero de esquema que desea elegir: "
                        select_squem = (gets.chomp).to_i
                        select_squem = select_squem - 1
                        send_squem = seats[select_squem]

                        puts "Estas son las salas disponibles"
                        self.all_movie_rooms

                        print "Digite el numero de la sala a la que desea asignar asientos: "
                        select_movie_room = (gets.chomp).to_i
                        select_movie_room = select_movie_room - 1
                        send = movie_rooms[select_movie_room]

                        movie_rooms[select_movie_room].seats.push(send_squem)

                        puts "Estos son los cines disponibles"
                        self.all_cines

                        print "Digite el numero del cine al que desea asignar la sala: "
                        select_cine = (gets.chomp).to_i
                        select_cine = select_cine - 1

                        cines[select_cine].movie_rooms.push(send)

                        puts "-------------------------------------------------------------------------------------------------"
                        opcion = 5
                    when 4
                        puts "------------------------------------- ELIMINAR SALAS DE CINE -------------------------------------"
                        self.all_movie_rooms

                        print "Digite el numero de la pelicula que desea eliminar: "
                        eliminar = (gets.chomp).to_i

                        self.delete_movie(eliminar)

                        puts "--------------------------------------------------------------------------------------"
                        opcion = 5
                    else
                        puts "------------------------------------- SALIENDO -------------------------------------"
                        opcion = 5
                    end
                end

            

            when 5
                puts "----------------------------------- CREAR USUARIOS -----------------------------------"

                print "Por favor escriba el nombre: "
                n_columns = (gets.chomp).to_s

                print "Por favor escriba la edad: "
                age = (gets.chomp).to_i

                print "Por favor escriba el dinero: "
                money = (gets.chomp).to_i

                puts "--------------------------------------------------------------------------------------"

            when 6
                puts "---------------------------------- ASIGNAR USUARIOS ----------------------------------"

                puts "--------------------------------------------------------------------------------------"

            else
                puts "------------------------------------- SALIENDO -------------------------------------"
                mainloop = 7
            end
        end
    end
end
                
prueba1 = Menu.new
prueba1.main()


# movie1 = Movie.new("Shrek", "2 hrs", 7, "Andrew Adamson")
# movie2 = Movie.new("Matrix", "2,5 hrs", 13, "Pepe Grillo")
# cine = Cine.new("Astor", "Cra 30") # TODO: implement singleton pattern to avoid instance more than one object

# p cine
# cine.create_movie_room(movie1, 15000)
# cine.create_movie_room(movie1, 25000)
# cine.create_movie_room(movie2, 25000)

# movie_room1 = cine.movie_rooms[0]
# movie_room2 = cine.movie_rooms[1]
# movie_room3 = cine.movie_rooms[2]

# puts "ANTES"
# p movie_room1.seats

# movie_room1.generate_seats(8, 9)
# puts "DESPUES"
# p movie_room1.seats

# movie_room1.generate_seats([1,2,3,10])
# p movie_room1.seats
# jose = User.new("Jose", 20, 5000)
# movie_room1.assign_seat(jose)
# p movie_room1.seats

# nico = User.new("Nico", 18, 5000)
# movie_room1.assign_seat(nico)
# p movie_room1.seats

# migue = User.new("Migue", 18, 5000)
# movie_room1.assign_seat(migue)
# p movie_room1.seats

# yony = User.new("Yony", 39, 5000)
# movie_room1.assign_seat(yony)
# p movie_room1.seats


# juan = User.new("juan", 39, 5000)
# movie_room1.assign_seat(juan)
# p movie_room1.seats
# a1 = Seat.new('A', 1)
# a2 = Seat.new('A', 2)
# p a1
# jose = User.new("Jose", 20, 5000)
# p jose

# a1.user = jose

# p a1
# p a1.user
# p a2.user
# puts a1.occupied?
# puts a2.occupied?

#p cine

#p cine.movie_rooms

#puts cine.movie_rooms_number

#RETO
# Hacer un menu, que permita ejecutar las acciones del programa
# opcion para crear un cine
# opcion para crear una pelicula
# opcion para crear salas de cine
# opcion para generar sillas
# opcion para crear usuarios
# opcion para asignar usuarios a las sillas
# ver como esta la sala de cine (diseño)