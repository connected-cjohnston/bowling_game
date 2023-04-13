class BowlingGame {
    private var score: Int = 0
    private var rolls = IntArray(21)
    private var index = 0
    fun roll(pins: Int) {
        rolls[index++] = pins
    }

    fun score(): Int {
        var score = 0
        var frameIndex = 0

        repeat(10) {
            if (isStrike(frameIndex)) {
                score += 10 + strikeBonus(frameIndex)
                frameIndex += 1
            } else if (isSpare(frameIndex)) {
                score += 10 + spareBonus(frameIndex)
                frameIndex += 2
            } else {
                score += frameScore(frameIndex)
                frameIndex += 2
            }
        }

        return score
    }

    private fun isStrike(frameIndex: Int) = rolls[frameIndex] == 10

    private fun isSpare(frameIndex: Int) = rolls[frameIndex] + rolls[frameIndex + 1] == 10

    private fun frameScore(frameIndex: Int) = rolls[frameIndex] + rolls[frameIndex + 1]

    private fun strikeBonus(frameIndex: Int) = rolls[frameIndex + 1] + rolls[frameIndex + 2]

    private fun spareBonus(frameIndex: Int) = rolls[frameIndex + 2]
}
