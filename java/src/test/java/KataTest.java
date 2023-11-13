import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.ValueSource;

import static org.junit.Assert.*;

public class KataTest {

    @Test
    public void exampleTest(){
            assertTrue(false);
    }

    @ParameterizedTest
    @ValueSource(booleans = {false,true})
    public void anotherExampleTest(boolean input){
        assertTrue(input);
    }
}
