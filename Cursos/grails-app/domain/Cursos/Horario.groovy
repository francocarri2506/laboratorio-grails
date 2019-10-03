package Cursos

class Horario {

    String descripcion
    Integer id
    Integer horaInicio
    Integer horaFin


    static constraints = {
        id (unique:true, maxsize:5)
        descripcion (blank:false , maxsize:100, nullable : true)

        horaInicio (blank:false , maxsize:100, nullable : true, validator:{ Integer valor, Horario obj ->
        if(valor < 0 || valor > 24 || valor > obj.horaFin){
            return ['HorarioError',obj.horaInicio]
        }})

        horaFin (blank:false , maxsize:100, nullable : true,validator:{ Integer valor, Horario obj ->
        if(valor < 0 || valor > 24 || valor < obj.horaInicio){
            return ['HorarioError',obj.horaFin]
        }})
    }
    

}

