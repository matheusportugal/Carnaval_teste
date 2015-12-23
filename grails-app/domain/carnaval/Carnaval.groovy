package carnaval

class Carnaval {
    UF uf
    int ano

    static belongsTo = Pontuacao

    static constraints = {
        uf blank: false , nullable: false
        ano blank: false , nullable: false, min:1
    }
}
enum UF {AC,AL,AP,AM,BA,CE,DF,
      ES,GO,MA,MT,MS,MG,PA,
      PB,PR,PE,PI,RJ,RN,RS,RO,
      RR,SC,SE,SP,TO}