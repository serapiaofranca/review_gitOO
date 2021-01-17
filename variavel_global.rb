#example global variable
class Pessoa
    @@numero_de_pessoas = 0

    def self.gerar
        @@numero_de_pessoas +=1
        puts "Nova pessoa gerada com sucesso"
        Pessoa.new
    end

    def self.numero_de_pessoas
        @@numero_de_pessoas
    end

    def m1
        puts "M1 method public"
        m2 
        m3
    end

    private
    def m2
        puts "m2 private"
    end
     
    def m3
        p "m3 private method"
    end
end

pessoa = Pessoa.gerar
pessoa1 = Pessoa.gerar
pessoa2 = Pessoa.gerar
pessoa3 = Pessoa.gerar

p Pessoa.numero_de_pessoas

pessoa.m1
pessoa.m2
pessoa.m3