require_relative "sensor"

class SensorTemperatura < Sensor
    attr_accessor :temperatura

    def initialize(sensor)
        super(sensor)
        @temperatura = 0
    end
end

termostato = SensorTemperatura.new("termostato")
termostato.instalar
termostato.coletar_dados