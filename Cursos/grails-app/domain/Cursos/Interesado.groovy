package Cursos

class Interesado extends Usuario{
    
    String categoria
    
    static constraints = {
        categoria (intList:['Alumno', 'Publico General','Docente'])
    }
}
