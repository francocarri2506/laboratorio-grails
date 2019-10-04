package Cursos

class CertificadoAprobacion extends Certificado{
    
    String nota
    Interesado interesado
    Expositor expositor
    AutoridadCertificante autoridad
    static constraints = {
        nota (blank:false , maxsize:100)
    }
}
