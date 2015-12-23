import carnaval.Usuario

class BootStrap {

    def init = { servletContext ->
        def usuario = new Usuario(nome:'Matheus',cpf:'1234',email:'matheus@gmail.com',login:'a',senha:'123',dataNascimento: new Date(),casado:true)
        usuario.senha = usuario.senha.encodeAsMD5()
        usuario.save(flush:true)
    }
    def destroy = {
    }
}
