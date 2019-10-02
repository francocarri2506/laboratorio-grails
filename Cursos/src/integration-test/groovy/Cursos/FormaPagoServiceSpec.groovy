package Cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class FormaPagoServiceSpec extends Specification {

    FormaPagoService formaPagoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new FormaPago(...).save(flush: true, failOnError: true)
        //new FormaPago(...).save(flush: true, failOnError: true)
        //FormaPago formaPago = new FormaPago(...).save(flush: true, failOnError: true)
        //new FormaPago(...).save(flush: true, failOnError: true)
        //new FormaPago(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //formaPago.id
    }

    void "test get"() {
        setupData()

        expect:
        formaPagoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<FormaPago> formaPagoList = formaPagoService.list(max: 2, offset: 2)

        then:
        formaPagoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        formaPagoService.count() == 5
    }

    void "test delete"() {
        Long formaPagoId = setupData()

        expect:
        formaPagoService.count() == 5

        when:
        formaPagoService.delete(formaPagoId)
        sessionFactory.currentSession.flush()

        then:
        formaPagoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        FormaPago formaPago = new FormaPago()
        formaPagoService.save(formaPago)

        then:
        formaPago.id != null
    }
}
