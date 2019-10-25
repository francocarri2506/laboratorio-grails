package Cursos

class Curso {

    String nombre
    Date fechaDesde
    Date fechaHasta
    String cantidadHoras
    String lugar
    String horarios
    Date fechaLimiteInscripcion
    Date fechadelCertificado
    Integer cupoMaximo
    Integer cupoMinimo
    byte[] imagen
    static hasMany = [interesados: Interesado,autoridades:AutoridadCertificante,expositores:Expositor]
    

    static constraints = {
        nombre (blank:false, maxsize:100, unique:true)
        fechaDesde (blank:true, validator:{ Date fecha, Curso obj ->
       if(fecha < new Date()){
       return ['fechaDesdeError',obj.fechaDesde]
        }}
        )

       fechaHasta (blank:true, validator:{ Date valor, Curso obj ->
        if(valor < obj.fechaDesde ){
            return ['fechaHastaError',obj.fechaHasta]
        }})

        cantidadHoras (blank:true, maxsize:100)
        lugar (blank:true, maxsize:100)
        horarios (blank:false, maxsize:100)

        fechaLimiteInscripcion (blank:true, validator:{ Date valor, Curso obj ->
        if(valor > obj.fechaHasta  ){
            return ['fechaLimiteInscripcionError',obj.fechaLimiteInscripcion]
        }})

        fechadelCertificado (blank:true, validator:{ Date valor, Curso obj ->
        if(valor < obj.fechaHasta ){
            return ['fechadelCertificadoError',obj.fechadelCertificado]
        }})

        cupoMaximo (blank:true, validator:{ Integer valor, Curso obj ->
        if(valor < obj.cupoMinimo){
            return ['cupoMaximoError',obj.cupoMinimo]
        }})
        
        cupoMinimo (blank:true)

        imagen (nullable:true)
    }


    static mapping = {
            imagen sqlType: 'bytea' 
    }
}
