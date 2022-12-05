package examples.ui;

import com.intuit.karate.junit5.Karate;

class UIRunner {
    
    @Karate.Test
    Karate testUi() {
        return Karate.run("ui").relativeTo(getClass());
    }    

}
