package Cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class PublicoGeneralServiceSpec extends Specification {

    PublicoGeneralService publicoGeneralService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new PublicoGeneral(...).save(flush: true, failOnError: true)
        //new PublicoGeneral(...).save(flush: true, failOnError: true)
        //PublicoGeneral publicoGeneral = new PublicoGeneral(...).save(flush: true, failOnError: true)
        //new PublicoGeneral(...).save(flush: true, failOnError: true)
        //new PublicoGeneral(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //publicoGeneral.id
    }

    void "test get"() {
        setupData()

        expect:
        publicoGeneralService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<PublicoGeneral> publicoGeneralList = publicoGeneralService.list(max: 2, offset: 2)

        then:
        publicoGeneralList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        publicoGeneralService.count() == 5
    }

    void "test delete"() {
        Long publicoGeneralId = setupData()

        expect:
        publicoGeneralService.count() == 5

        when:
        publicoGeneralService.delete(publicoGeneralId)
        sessionFactory.currentSession.flush()

        then:
        publicoGeneralService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        PublicoGeneral publicoGeneral = new PublicoGeneral()
        publicoGeneralService.save(publicoGeneral)

        then:
        publicoGeneral.id != null
    }
}
