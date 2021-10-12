require_relative 'carta'

class Baraja 
    attr_accessor :carta
    def initialize(carta)
        @carta = carta
    end
    def barajar
        carta.shuffle
    end
    def sacar
       carta.take(1)
    end
    def repartir_mano
        c = Array.new
        c = carta.take(5)
    end    
end


baraja1 = Baraja.new(Array.new(53){Carta.new})

puts baraja1.carta
puts '------******** separacionnn *********-------'
puts baraja1.barajar
puts '------******** separacionnn *********-------'
puts baraja1.sacar
puts '------******** separacionnn *********-------'
puts baraja1.repartir_mano