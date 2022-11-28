package examples.compras;

import com.intuit.karate.junit5.Karate;

class ComprasRunner {
    
    @Karate.Test
    Karate testCompras() {
        return Karate.run("compras").relativeTo(getClass());
    }    

}
