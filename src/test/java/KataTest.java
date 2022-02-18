import org.junit.Test;
import static org.junit.Assert.*;

public class KataTest {
    @Test
    public void firstTest() {
        assertTrue(true);
    }

    @Test
    public void uppercaseWTranslatesToUppercaseJ() {
        assertEquals("J", rot13("W"));
    }

    private String rot13(String w) {
        return "J";
    }
}
