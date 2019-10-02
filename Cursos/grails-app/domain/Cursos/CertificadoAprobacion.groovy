package Cursos

class CertificadoAprobacion extends Certificado{
    String nota

    static constraints = {
        nota (blank:false , maxsize:100,)
    }
}
