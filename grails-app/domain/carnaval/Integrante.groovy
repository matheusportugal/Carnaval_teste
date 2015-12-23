package carnaval

class Integrante {
    float peso
    int sapato

    static belongsTo = Usuario

    static hasMany = [escolas:Escola]

    static constraints = {
        peso blank: false , nullable: false, min:1F
        sapato blank: false , nullable: false,min:1
    }
}
