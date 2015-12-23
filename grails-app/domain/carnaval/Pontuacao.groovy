package carnaval

class Pontuacao {
    int posicao
    int valor

    static hasMany = [carnavais:Carnaval]

    static constraints = {
        posicao blank: false , nullable: false, min:1
        valor blank: false , nullable: false, min:1
    }
}
