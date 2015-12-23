package carnaval

class Responsavel {
    Date inicioPeriodo
    Date terminoPeriodo

    static belongsTo = Usuario

    static hasMany = [escolas:Escola]

    static constraints = {

    }
}
