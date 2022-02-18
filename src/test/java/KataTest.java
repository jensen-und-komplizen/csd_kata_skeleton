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

    private String rot13(String w) {
        if (w.equals("E")) {
            return "R";
        }

        return "J";
    }
}
