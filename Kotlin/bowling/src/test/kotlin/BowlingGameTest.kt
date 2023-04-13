import kotlin.test.Test
import kotlin.test.assertEquals

class BowlingGameTest() {
    private val game = BowlingGame()

    @Test
    fun shouldReturnZero_whenUserRollsAGutterGame() {
        repeat(20) {
            game.roll(0)
        }

        assertEquals(0, game.score())
    }

    @Test
    fun canRollAllOnes() {
        repeat(20) { game.roll(1) }
        assertEquals(20, game.score())
    }

    @Test
    fun canRollASpare() {
        game.roll(5)
        game.roll(5)
        game.roll(3)

        repeat(17) { game.roll(0) }

        assertEquals(16, game.score())
    }

    @Test
    fun canRollAStrike() {
        game.roll(10)
        game.roll(3)
        game.roll(4)

        repeat(16) { game.roll(0) }

        assertEquals(24, game.score())
    }

    @Test
    fun canRollAPerfectGame() {
        repeat(12) { game.roll(10) }

        assertEquals(300, game.score())
    }
}
