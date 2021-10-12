class Usuario
    attr_accessor :nombre, :banco
    def initialize(nombre,banco = nil)
        @nombre = nombre
        @banco = banco
    end 
    def to_s
        "#{@nombre} - #{@banco}"
    end   
    def saldo_total()
        @banco.saldo
    end   
end

class CuentaBancaria
    attr_accessor :banco,:numero_de_cuenta,:saldo
    def initialize(banco,numero_de_cuenta,saldo = 0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end   

    def transferir (cuenta1,cuenta2,monto)
        
        banco1 = cuenta1
        banco2 = cuenta2
        monto = monto

        puts "el numero de la cuenta desde la que se transferira es #{banco1.numero_de_cuenta}"
        puts "el numero de la cuenta a la que transferira es #{banco2.numero_de_cuenta}"

        if banco1.saldo < monto
          puts "saldo insuficiente"
         else
            banco1.saldo = banco1.saldo - monto
            banco2.saldo = banco2.saldo + monto

        end

    
    end   
end




banco1 = CuentaBancaria.new("Estafa",12345678,10000)
usuario1 = Usuario.new("Max", banco1)
banco2 = CuentaBancaria.new("Estafa",12345679,5000)
usuario2 = Usuario.new("Karl", banco2)

banco1.transferir(banco1,banco2, 3000)


puts usuario1.saldo_total, usuario2.saldo_total












