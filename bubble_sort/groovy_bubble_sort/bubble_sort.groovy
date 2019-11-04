import static java.lang.Math.*
import org.codehaus.groovy.runtime.InvokerHelper

//comment

class Main extends Script {
    def run() {
        println 'Groovy world!'
        assert sin(0) == 0.0
        assert cos(0) == 1.0
        a = [1,43,5,67,8,912,3,465,89,89,82,34]
        println a.size()
        for(out in (a.size()-2)..2) {
            0.upto(out) { index ->
                if(a[index] > a[index+1])
                    swap(index,index+1)
            }
        }
        println "This is bubble ${a} "
    }

    def swap(def one,def two) {
        def temp = a[one]
        a[one] = a[two]
        a[two] = temp
    }

    static void main(String[] args) {
        InvokerHelper.runScript(Main, args)
    }
}
