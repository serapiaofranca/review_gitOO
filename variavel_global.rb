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
    end

    private  # tudo abaixo do private se torna metodo privado
    def m2
        puts "m2 private"
    end
     
    def m3
        puts "m3 private method"
    end

    def m4
        puts "m4 private so" 
    end 

    protected # tudo abaixo é protected
    def m6
        puts "m6 method protected"
    end
end

class SubClasse < Pessoa
    puts "pessoa filha gerada "
    def m5
        puts "M5 Method subclass"
        m3 
        m4
        new_obj = SubClasse.new
        new_obj.m6
    end
end

pessoa = SubClasse.new
pessoa1 = Pessoa.gerar
pessoa2 = Pessoa.gerar
pessoa3 = Pessoa.gerar

p Pessoa.numero_de_pessoas

pessoa.m1
pessoa.m5
#pessoa.m3

