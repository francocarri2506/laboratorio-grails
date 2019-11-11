package Cursos

import grails.gorm.services.Service

@Service(CertificadoAsistencia)
abstract class  CertificadoAsisService implements CertificadoAsistenciaService{

    def certificadoAsistencia(Long id){
        return Inscripcion.findById(id)
    }

    def obtenerExpositor(Long id){
        return Expositor.findById(id)
    }

    def obtenerCurso(Long id){
        return Curso.findById(id)
    }
}
