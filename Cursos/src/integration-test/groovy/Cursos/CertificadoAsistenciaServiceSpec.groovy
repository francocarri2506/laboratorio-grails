package Cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CertificadoAsistenciaServiceSpec extends Specification {

    CertificadoAsistenciaService certificadoAsistenciaService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new CertificadoAsistencia(...).save(flush: true, failOnError: true)
        //new CertificadoAsistencia(...).save(flush: true, failOnError: true)
        //CertificadoAsistencia certificadoAsistencia = new CertificadoAsistencia(...).save(flush: true, failOnError: true)
        //new CertificadoAsistencia(...).save(flush: true, failOnError: true)
        //new CertificadoAsistencia(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //certificadoAsistencia.id
    }

    void "test get"() {
        setupData()

        expect:
        certificadoAsistenciaService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<CertificadoAsistencia> certificadoAsistenciaList = certificadoAsistenciaService.list(max: 2, offset: 2)

        then:
        certificadoAsistenciaList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        certificadoAsistenciaService.count() == 5
    }

    void "test delete"() {
        Long certificadoAsistenciaId = setupData()

        expect:
        certificadoAsistenciaService.count() == 5

        when:
        certificadoAsistenciaService.delete(certificadoAsistenciaId)
        sessionFactory.currentSession.flush()

        then:
        certificadoAsistenciaService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        CertificadoAsistencia certificadoAsistencia = new CertificadoAsistencia()
        certificadoAsistenciaService.save(certificadoAsistencia)

        then:
        certificadoAsistencia.id != null
    }
}
