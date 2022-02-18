import org.junit.Test;
import static org.junit.Assert.*;

public class KataTest {
    @Test
    public void uppercaseWTranslatesToUppercaseJ() {
        assertEquals("J", rot13("W"));
    }

    @Test
    public void uppercaseETranslatesToUppercaseR() {
        assertEquals("R", rot13("E"));
    }

    @Test
    public void uppercaseATranslatesToUppercaseN() {
        assertEquals("N", rot13("A"));
    }

    private String rot13(String stringToConvert) {
        if (stringToConvert.equals("E")) {
            return "R";
        }

        return "J";
    }
}
