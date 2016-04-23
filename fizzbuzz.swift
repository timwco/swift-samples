for index in 1...100 {

    if index % 15 == 0 {
        print("FizzBuzz")
    } else if index % 5 == 0 {
        print("Buzz")
    } else if index % 3 == 0 {
        print("Fizz")
    } else {
        print(index)
    }

}
