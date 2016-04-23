func isValid(cc: String) -> Bool {

    let characters = Array(cc.characters).map{Int(String($0)) ?? 0}

    var doubled: [Int] = []

    for (index, char) in characters.enumerate() {
        var sample = 0;
        if index % 2 == 0 {
            sample = char * 2

            if sample > 9 {
                doubled.append(sample - 9)
            } else {
                doubled.append(char * 2)
            }

        } else {
            doubled.append(char)
        }
    }

    let sum = doubled.reduce(0,combine: +)

    return sum % 10 == 0
}

isValid("4408041234567893")
isValid("5000000000000000")
