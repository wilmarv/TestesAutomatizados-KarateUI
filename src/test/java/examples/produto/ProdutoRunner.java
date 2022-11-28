package examples.produto;

import com.intuit.karate.junit5.Karate;

class ProdutoRunner {
    
    @Karate.Test
    Karate testProduto() {
        return Karate.run("produto").relativeTo(getClass());
    }    

}
