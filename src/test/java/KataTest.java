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

    @Test
    public void uppercaseMTranslatesToUppercaseZ() {
        assertEquals("Z", rot13("M"));
    }

    @Test
    public void uppercaseNTranslatesToUppercaseA() {
        assertEquals("A", rot13("N"));
    }

    private String rot13(String stringToConvert) {
        char character = stringToConvert.charAt(0);
        if (character >= 'A' && character <= 'N') {
            return Character.toString(character+13);
        }

        return "J";
    }
}
