package Cursos

interface CertificadoAsistenciaService {

    CertificadoAsistencia get(Serializable id)

    List<CertificadoAsistencia> list(Map args)

    Long count()

    void delete(Serializable id)

    CertificadoAsistencia save(CertificadoAsistencia certificadoAsistencia)

}