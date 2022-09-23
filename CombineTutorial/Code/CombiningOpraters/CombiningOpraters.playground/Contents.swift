import UIKit
import Combine

//=================================|  Prepend  oprater |=================================|
// it will add element before publishing.
/*
let publisher = (1...10).publisher
let publisher2 = (500...505).publisher
publisher
    .prepend(12,14) // It will add before publishing
    .prepend([101,102]) // It will add before publishing
    .prepend(publisher2) // It will add before publishing
    .sink(receiveValue: {print($0)})

*/



//=================================|  append  oprater |=================================|
// it will add sequence or another publisher once current publishing completd
/*
 let publisher = (1...10).publisher
let publisher2 = (101...110).publisher


publisher
    .append([220,330])
    .append(publisher2)
    .sink(receiveValue: {print($0)})

*/


//=================================|  switchToLatest  oprater |=================================|
// it will help us to switch between publisher.
/*
let publisher1 = PassthroughSubject<String,Never>()
let publisher2 = PassthroughSubject<String,Never>()

let publishers = PassthroughSubject<PassthroughSubject<String,Never>,Never>()

publishers.switchToLatest()
    .sink(receiveValue: {print($0)})

publishers.send(publisher1)

publisher1.send("Publisher - 1 - Value 1")
publisher1.send("Publisher - 1 - Value 2")

publishers.send(publisher2)

publisher2.send("Publisher - 2 - Value 1")
publisher2.send("Publisher - 2 - Value 2")

*/





//=================================| merge oprater |=================================|
// we can merge publishers with single sink method.
/*
let publisher1 = PassthroughSubject<String, Never>()
let publisher2 = PassthroughSubject<String, Never>()

publisher1.merge(with: publisher2)
    .sink(receiveValue: { print($0)})

publisher1.send("I have sent it from Publisher1")
publisher2.send("I have sent it from Publisher2")

*/


//=================================| combineLatest oprater |=================================|
/*
let publisher1 = PassthroughSubject<String,Never>()
let publisher2 = PassthroughSubject<Int,Never>()

publisher1.combineLatest(publisher2)
    .sink(receiveValue: {
        print("Pub 1: \($0) Pub 2: \($1)") // it is comming in tuple
        
    })



publisher1.send("Okay")
publisher2.send(100)

publisher1.send("Fine ") // it will send only latest value of both pblisher.

*/




//=================================| zip oprater |=================================|

/*
let publisher1 = PassthroughSubject<String,Never>()
let publisher2 = PassthroughSubject<Int, Never>()

publisher1.zip(publisher2).sink(receiveValue: { print("Pub1: \($0) Pub2: \($1)") })

publisher1.send("Okk")
publisher1.send("Next") // It is not going to fire till it get its pair as it's a zip combine oprater

publisher2.send(100)
//publisher2.send(101)

*/

