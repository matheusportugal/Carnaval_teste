package carnaval

class Usuario {
    String nome
    String cpf
    String email
    String login
    String senha
    Date dataNascimento
    String municipio
    Boolean casado

    static hasMany = [funcoes:Funcao]

    static constraints = {

        nome blank: false , nullable: false, maxSize:255
        cpf blank: false , nullable: false , maxSize:45
        email blank: false , nullable: false , maxSize:200
        login blank: false , nullable: false , maxSize:45
        senha blank: false , nullable: false, maxSize:45
        municipio blank: false , nullable: false , maxSize:150
        casado blank: false , nullable: false
    }
}
