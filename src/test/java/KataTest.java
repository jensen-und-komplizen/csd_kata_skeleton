import org.junit.Test;

import static org.junit.Assert.assertEquals;

public class KataTest {
    @Test
    public void singleUpperCaseLetterETest() {
        assertEquals("R", rotDreizehn("E"));
    }

    @Test
    public void singleUpperCaseLetterF() {
        assertEquals("S", rotDreizehn("F"));
    }

    private String rotDreizehn(String i) {
        return "R";
    }
}
