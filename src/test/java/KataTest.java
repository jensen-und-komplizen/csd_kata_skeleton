import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.assertEquals;

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

    @ParameterizedTest
    @MethodSource("singleUppercaseLettersDataSource")
    void singleUppercaseLetterConvertedToRot13(String letterToConvert, String expectedLetter) {
        assertEquals(expectedLetter, rot13(letterToConvert));
    }

    private static Stream<Arguments> singleUppercaseLettersDataSource() {
        return Stream.of(
                Arguments.of("W", "J")
        );
    }

    private String rot13(String stringToConvert) {
        char character = stringToConvert.charAt(0);
        if (character >= 'A' && character < 'N') {
            return Character.toString(character+13);
        }
        return Character.toString(character-13);
    }
}
