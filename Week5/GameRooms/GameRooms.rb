require "pry"
class Game

    attr_accessor :rooms, :bag

    def initialize character
        @character = character
        @rooms = []
    end

    def add_room room
        @rooms << room
    end

    def show_room id
        a = true
        room = get_room(@character.position)
        puts room.message
        if room.object == nil
            return "hola"
        else
            while a
                puts "Puedes ver un #{room.object} en el suelo. ¿Quieres cogerlo?"
                object_room = gets.chomp.capitalize!
                if object_room == "Yes"
                    puts "Has cogido un #{room.object}"
                    @character.bag << room.object
                    a = false
                elsif object_room == "No"
                    puts "Ok! Sigue tu camino ;)"
                    a = false
                else
                    puts "Sorry, I don't understand you! ¿Quieres cogerlo? Yes or No?"
                    puts ">"
                end
            end
        end
    end

    def get_room id
        room = @rooms.find{|room| id == room.id }
    end

    def start_game
        a = true
        puts "-------------------------------------------"
        puts "-                 GAME                    -"
        puts "-------------------------------------------" 
        puts "Welcome to the Game of Rooms!! What is your name?"
        @name = gets.chomp.capitalize!   
        puts "Hi #{@name}!! Are you ready to start?"
        while a
            ready = gets.chomp.capitalize!
            if ready == "Yes"
                puts "Great!! Let's go"
                play
            elsif ready == "No"
                puts "Oh! Don't worry! See U soon ;)"
                a = false
            else
                puts "Sorry, I don't understand you! Are you ready? Yes or No?"
                puts ">"
            end
        end
    end

    def play
        playing = true
        show_room(@character.position)
        while playing 
                puts "Tienes una mochila, ¿quieres ver los objetos que almacenas?"
                bag = gets.chomp.capitalize!
                if bag == "Yes"
                    puts "Éstos son tus objetos"
                    puts @character.bag
                elsif bag == "No"
                    puts "Ok! Sigue tu camino ;)"
                else
                    puts "Sorry, I don't understand you! ¿Quieres verlos? Yes or No?"
                    puts ">"
                end
        puts "¿Qué puerta decides abrir?"
        puts ">"
        direction = get_direction.chomp.upcase
        execute_direction(direction)
        playing = is_safe_room?   
        show_room(@character.position) 
        end 
    end

    def is_safe_room?
        get_room(@character.position).safe
    end

    def get_direction
        direction = gets.chomp
    end

    def execute_direction direction
        current_room = get_room(@character.position)
        possible_directions = current_room.paths.keys
        exist_direction = possible_directions.include? direction.to_sym
        if exist_direction
            @character.position = current_room.paths[direction.to_sym]
        else
            puts "That is a wrong way, you only must choose between the possible directions: #{possible_directions}"
        end
    end

end

class Room

    attr_accessor :id, :paths, :message, :rooms, :safe, :object

    def initialize id, paths, message, safe: true, object: nil
        @id = id
        @paths = paths
        @message = message
        @safe = safe
        @object = object
    end

end

class Character

    attr_accessor :position, :bag

    def initialize position
        @position = position
        @bag = []
    end

end

rooms = []
rooms[0] = Room.new(1, { :N => 3, :S => 2, :E => 4, :W => 8 }, "Te despiertas. Quieres salir de ese lugar pero estás aturdido y la habitación 
donde te encuentras está muy oscura.\nDetrás de la puerta Sur(S) escuchas a un gato aullar.\nTe acercas a la puerta Oeste(W) y notas que huele a chocolate fundido. Todo lo
contrario que la puerta Norte(N) que desprende un olor putrefacto.\nPor último, a través de la puerta Este(E) percibes la voz de un hombre pidiendo ayuda")
rooms[1] = Room.new(2, { :N => 1, :E => 5 }, "Has llegado a la habitación 2 y te encuentras a un gato muerto de hambre que no te deja atravesar la puerta Este(E). También puedes regresar a la habitación
anterior por la puerta Norte(N).")
rooms[2] = Room.new(3, { :N => 6, :S => 1 }, "Oh no! La habitación 3 es un congelador! Ves personas congeladas y decides salir\npitando de ahí. Antes de la puerta Norte(N) encuentras una llave oxidada.
¿Avanzas hacia adelante o prefieres volver a la puerta Sur(S)?", object:"key")
rooms[3] = Room.new(4, { :N => 13, :S => 5, :E => 12, :W => 1 }, "Estás en la habitación 4 y te encuentras con un hombre tremendamente asustado\nporque en una habitación contigua dice que hay un terrible asesino.
Debes escoger entre la puerta Norte(N), la puerta Sur(S) o la puerta Este(E),\nsiempre que no seas un cobarde y quieras retroceder...")
rooms[4] = Room.new(5, { :N => 4, :W => 2 }, "Estás un poco perdido y no sabes si retroceder o avanzar...Para avanzar deberás atravesar la puerta Norte(N) y para retroceder deberás volver por la puerta\nOeste(W)")
rooms[5] = Room.new(6, { :S => 3, :E => 7 }, "¡Bien! Saliste del congelador pero aún sigues teniendo algo de frío. Tienes la\nsensación de que algo malo se avecina... Sólo hay 2 posibilidades, o abres la\npuerta Este(W) o la puerta Sur(S) que está helada...")
rooms[6] = Room.new(7, { :E => 9, :W => 6 }, "¡WOW! Por fin una buena noticia :) Te encuentras con una niña con un camisón que te dice que tienes que usar esa llave oxidada para una puerta que está cerrada. Si te animas, ya puedes avanzar por la puerta Este(E)..o siempre podrás regresar por la puerta Oeste(W)", object:"sword")
rooms[7] = Room.new(8, { :E => 1 }, "Oh no! Ese pastel de chocolate fundido estaba envenenado y poco a poco vas
desfalleciendo... GAME OVER", safe: false)
rooms[8] = Room.new(9, { :N => 10, :S => 11, :W => 7 }, "Llevas un rato caminando y abriendo puertas...estás en una habitación que tiene una puerta oxidada Norte(N) donde se oye a varios pájaros en libertad, una puerta Oeste(W) y una puerta Sur(S) que tiene restos de sangre...")
rooms[9] = Room.new(10, { :S => 9 }, "Oh no! La puerta oxidada que estaba cerrada te ha conducido hacia un precipioooooooooooo....... GAME OVER", safe: false)
rooms[10] = Room.new(11, { :N => 9, :S => 12, :E => 14 }, "Qué miedo!! Hay un enorme perro que custodia la puerta Este(E). Quizás necesites algo para distraerlo. Puedes optar por continuar hacia la puerta Sur(S)")
rooms[11] = Room.new(12, { :N => 11, :W => 4 }, "Estás en una habitación que para avanzar necesitas resolver un acertijo..")
rooms[12] = Room.new(13, { :S => 4 }, "Oh no! Hay un monstruoo! Sales corriendo pero de repen.... GAME OVER", safe: false)
rooms[13] = Room.new(14, { :W => 11 }, "WIIIIIIIN =D", safe: false)

player = Character.new(1)
game = Game.new(player)

rooms.each {|room| game.add_room(room)}

game.start_game