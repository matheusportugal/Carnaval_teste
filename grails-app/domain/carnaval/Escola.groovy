package carnaval

class Escola {
    String sigla
    String nome
    int anoFundacao

    static belongsTo = Pontuacao,Integrante,Responsavel

    static constraints = {

        sigla blank: false , nullable: false, maxSize:45
        nome blank: false , nullable: false, maxSize:255
        anoFundacao blank: false , nullable: false, min:1
    }
}
