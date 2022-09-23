import UIKit
import Combine

//=================================|  Filter  oprater |=================================|

/*
var numbers = (0...30).publisher

numbers.filter { $0 % 2 == 0 }
    .sink { print($0)}

*/
//=================================|  removeDublicate  oprater |=================================|

/*

// it will not remove all dublicates. it will remove dublicate sequence only. Like back to back if same is comming.
var words = "Apple Apple Fruit Orange Orange Apple Orange banana Apple".components(separatedBy: " ").publisher ;


words
    .removeDuplicates()
    .sink { print($0) }

*/

//=================================| compactMap   oprater |=================================|

/*
// It will ignore the nil value and passes only corrected converted value
var publisher = ["a", "5", "cc", "19", "23", "98"].publisher

publisher
    .compactMap { Float($0) }
    .sink { print($0) }

*/


//=================================|  ignoreOutput  oprater |=================================|
// It will ignore the output and only fires the completion handler
/*
let publisher = (1...500).publisher

publisher
    .ignoreOutput()
    .sink { print($0 )} receiveValue: { print($0)}

*/



//=================================|  first  oprater |=================================|
// it will give you the first element once condition matched
/*
 
 let publisher = (1...9).publisher
publisher.first(where: { $0 % 2 == 0})
    .sink { print($0) }

*/


//=================================|  last  oprater |=================================|
// it will give you condition matched last element

/*
let publisher = (0...9).publisher
publisher
    .last { $0 % 2 == 0 }
    .sink { print($0) }


*/


//=================================|  dropFirst  oprater |=================================|
/*
let publisher = (0...9).publisher
publisher
    .dropFirst(4)
    .sink { print( $0 )}

*/




//=================================|  drop(while  oprater |=================================|
// it will start publishing once condition matched first time.
/*
let publisher = (1...9).publisher
publisher.drop { val in
   // val < 8
    val % 3 != 0
}.sink(receiveValue:{ print($0)})
    
*/

//=================================|  drop(untilOutputFrom oprater |=================================|
// I will publish once second publisher is ready, or received first event al least
/*
let taps = PassthroughSubject<Int, Never>()
let isReady = PassthroughSubject<Void, Never>()


taps.drop(untilOutputFrom: isReady)
    .sink { val in
    print(val)
}
(1...10).forEach { val in
    taps.send(val)
    
    if val == 4 {
        isReady.send()
    }
}

*/


//=================================|  prefix oprater |=================================|
// Prefix oprator we can use to set max number of value.
/*
let publisher = (1...10).publisher

publisher.prefix(6).sink { val in
    print(val)
}

//publisher.prefix(while: { $0 < 4 }).sink(receiveValue: { print($0)})

*/



/*
// CHALLENGE: filter all things
//Create an example that publish a collection of numbers from 1 to 100, and use filtering operators to:
 1. Skip the first 50 values emitted by the upstream publisher.
 2. Take the next 20 values after those 50 values.
 3. Only take even number
 
 The output of your example should produce the following numbers, one per line:
 52, 54, 58, 60, 62, 64, 66, 68, 70
*/

/*
let publisher = (1...100).publisher

publisher
    .dropFirst(50)
    .prefix(20)
    .filter({ $0 % 2 == 0 })
    .sink(receiveValue: {print($0)})

*/



















