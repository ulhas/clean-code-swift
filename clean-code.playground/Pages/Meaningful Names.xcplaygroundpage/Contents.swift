//: [Overview](@previous)

//: **Listing 2-1**
//: **Variables with unclear context.**

private func printGuessStatistics(candidate: String, count: Int) {
    var number: String
    var verb: String
    var pluralModifier: String
    
    if (count == 0) {
        number = "no"
        verb = "are"
        pluralModifier = "s"
    } else if (count == 1) {
        number = "1"
        verb = "is"
        pluralModifier = ""
    } else {
        number = String(count)
        verb = "are"
        pluralModifier = "s"
    }
    
    let guessMessage = "There \(verb) \(number) \(candidate)\(pluralModifier)"
    
    print(guessMessage)
}

printGuessStatistics("Class", count: 0)

//: **Listing 2-2**
//: **Variables have clear context.**

public class GuessStatisticsMessage {
    
    private var number: String = ""
    private var verb: String = ""
    private var pluralModifier: String = ""
    
    public func make(candidate: String, count: Int) -> String {
        createPluralDependentMessageParts(count)
        return "There \(verb) \(number) \(candidate)\(pluralModifier)"
    }
    
    private func createPluralDependentMessageParts(count: Int) {
        if (count == 0) {
            thereAreNoLetters()
        } else if (count == 1) {
            thereIsOneLetter()
        } else {
            thereAreManyLetters(count)
        }
    }
    
    private func thereAreManyLetters(count: Int) {
        number = String(count)
        verb = "are"
        pluralModifier = "s"
    }
    
    private func thereIsOneLetter() {
        number = "1"
        verb = "is"
        pluralModifier = ""
    }
    
    private func thereAreNoLetters() {
        number = "no"
        verb = "are"
        pluralModifier = "s"
    }
}

GuessStatisticsMessage().make("Class", count: 0)

//: [Functions](@next)
