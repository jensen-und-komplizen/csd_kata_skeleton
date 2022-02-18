import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.Arguments;
import org.junit.jupiter.params.provider.MethodSource;

import java.util.stream.Stream;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class KataTest {

    @ParameterizedTest(name="\"{0}\" converts to \"{1}\"")
    @MethodSource("singleUppercaseLettersDataSource")
    void singleUppercaseLetterConvertedToRot13(String letterToConvert, String expectedLetter) {
        assertEquals(expectedLetter, rot13(letterToConvert));
    }

    private static Stream<Arguments> singleUppercaseLettersDataSource() {
        return Stream.of(
                Arguments.of("W", "J"),
                Arguments.of("E", "R"),
                Arguments.of("A", "N"),
                Arguments.of("M", "Z"),
                Arguments.of("N", "A")
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
