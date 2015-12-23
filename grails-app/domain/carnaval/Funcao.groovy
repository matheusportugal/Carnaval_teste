package carnaval

class Funcao {
    String descricao

    static belongsTo = Usuario

    static constraints = {
        descricao blank: false , nullable: false, maxSize:255
    }
}
