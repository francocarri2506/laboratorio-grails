package Cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CertificadoAprobacionServiceSpec extends Specification {

    CertificadoAprobacionService certificadoAprobacionService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new CertificadoAprobacion(...).save(flush: true, failOnError: true)
        //new CertificadoAprobacion(...).save(flush: true, failOnError: true)
        //CertificadoAprobacion certificadoAprobacion = new CertificadoAprobacion(...).save(flush: true, failOnError: true)
        //new CertificadoAprobacion(...).save(flush: true, failOnError: true)
        //new CertificadoAprobacion(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //certificadoAprobacion.id
    }

    void "test get"() {
        setupData()

        expect:
        certificadoAprobacionService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<CertificadoAprobacion> certificadoAprobacionList = certificadoAprobacionService.list(max: 2, offset: 2)

        then:
        certificadoAprobacionList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        certificadoAprobacionService.count() == 5
    }

    void "test delete"() {
        Long certificadoAprobacionId = setupData()

        expect:
        certificadoAprobacionService.count() == 5

        when:
        certificadoAprobacionService.delete(certificadoAprobacionId)
        sessionFactory.currentSession.flush()

        then:
        certificadoAprobacionService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        CertificadoAprobacion certificadoAprobacion = new CertificadoAprobacion()
        certificadoAprobacionService.save(certificadoAprobacion)

        then:
        certificadoAprobacion.id != null
    }
}
