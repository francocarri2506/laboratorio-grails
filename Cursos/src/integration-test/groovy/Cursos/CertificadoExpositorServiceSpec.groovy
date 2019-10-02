package Cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CertificadoExpositorServiceSpec extends Specification {

    CertificadoExpositorService certificadoExpositorService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new CertificadoExpositor(...).save(flush: true, failOnError: true)
        //new CertificadoExpositor(...).save(flush: true, failOnError: true)
        //CertificadoExpositor certificadoExpositor = new CertificadoExpositor(...).save(flush: true, failOnError: true)
        //new CertificadoExpositor(...).save(flush: true, failOnError: true)
        //new CertificadoExpositor(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //certificadoExpositor.id
    }

    void "test get"() {
        setupData()

        expect:
        certificadoExpositorService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<CertificadoExpositor> certificadoExpositorList = certificadoExpositorService.list(max: 2, offset: 2)

        then:
        certificadoExpositorList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        certificadoExpositorService.count() == 5
    }

    void "test delete"() {
        Long certificadoExpositorId = setupData()

        expect:
        certificadoExpositorService.count() == 5

        when:
        certificadoExpositorService.delete(certificadoExpositorId)
        sessionFactory.currentSession.flush()

        then:
        certificadoExpositorService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        CertificadoExpositor certificadoExpositor = new CertificadoExpositor()
        certificadoExpositorService.save(certificadoExpositor)

        then:
        certificadoExpositor.id != null
    }
}
