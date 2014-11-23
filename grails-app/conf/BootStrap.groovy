import grails.util.Environment
import telephoneDirectory.Entry

class BootStrap {

    def init = { servletContext ->
         if (Environment.current == Environment.DEVELOPMENT || Environment.current == Environment.TEST) {
            def fibonacci = new Entry(firstName : 'Leonardo', lastName: 'Fibonacci', phoneNumber: '+39 11 23581321')
            fibonacci.save()
            
            def avogadro = new Entry(firstName : "Amedeo", lastName : "Avogadro", phoneNumber : "+39 60 221023")
            avogadro.save()
            
            def pigreco = new Entry(firstName : "Pi", lastName : "Greco", phoneNumber : "+30 314 159265")
            pigreco.save()
            
            def farady = new Entry(firstName : "Michael", lastName : "Faraday", phoneNumber : "+44 964 853365")
            farady.save()
            
            def planck = new Entry(firstName : "Max", lastName : "Planck", phoneNumber : "+49 662 626957")
            planck.save()
        }
    }
    def destroy = {
    }
}
