class Sensor
    attr_accessor :sensor, :instalado, :inicializado, :coletando

    def initialize (sensor)
        @sensor = sensor
        @instalado = false
        @inicalizado = false
        @coletando = false
    end

    def instalar
        puts "#{@sensor}: Estou sendo instalado...."
        @instalado = true
    end

    def inicializar
        if @instalado 
            puts "#{@sensor} Sensor inicializado com sucesso."
            @inicializado = true
        else
            puts "#{@sensor} Sensor não instalado."
        end
    end

    def coletar_dados
        if @inicializado
            puts "Iniciando coleta de dados::  #{@sensor}...."
            @coletando = true
            puts "#{@sensor}::  ... coleta de dados finalizada."
        else
            puts "Falha: sensor:: #{@sensor} não inicializado"
        end
    end
end

#calibre = Sensor.new("solenoide")
#calibre.instalar
#calibre.inicializar
#calibre.coletar_dados
