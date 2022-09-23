import UIKit
import Combine

//=================================| |=================================|





//=================================| collect oprater |=================================|

// collect will collect items in array or in group of array.
/*
let publisher = ["A","B","C","D","E"].publisher


//Without collect operator.
publisher.sink {
        print($0)
    }

//With single array collectoprator
publisher.collect().sink {
    print($0)
}

//In group of array
publisher.collect(2).sink {
    print($0)
}
*/


//=================================| Map oprater |=================================|

// Map oprater takes array of items. It will map over it and it can produce fully diffrent itms.
/*
let publisher = [1, 32, 243, 543, 231, 44].publisher
let formater = NumberFormatter()
formater.numberStyle = .spellOut
publisher.map { item in
    formater.string(from: NSNumber(integerLiteral: item))
}.sink { value in
    print(value ?? "")
}
*/


//=================================| Map oprater |=================================|

// we can use map key path feature to get the key of model.
/*
struct Point{
    var x:Float
    var y:Float
}

let publisher = PassthroughSubject<Point, Never>()

publisher.map(\.x, \.y).sink { (x, y) in
    
    print("X is \(x) Y is \(y)") ;
}

publisher.send(Point(x: 12.9, y: 33.7))

*/




//=================================| flat map  oprater |=================================|

// Flat map flatten the internal internal things. Other wise only top layer will fire.
/*
 
 
 
struct School {
    var name: String
    var numOfStudents: CurrentValueSubject<Int, Never>
    
    init(name: String, numOfStudent: Int) {
        self.name = name ;
        self.numOfStudents = CurrentValueSubject(numOfStudent) ;
    }
}

let  citySchool = School(name: "Fount Town school", numOfStudent: 100);

let schools = CurrentValueSubject<School, Never>(citySchool)


//schools.sink {
//    print($0)
//}


//With flat map internal events will also fire


schools.flatMap { school in
    school.numOfStudents // here it is giving access of internal features. it is activating the internal subject
}.sink { value in
    print(value)
}


let  townSchool = School(name: "Global Town school", numOfStudent: 50);
schools.value = townSchool ;




//Error sink is not firing for internal events only the upper layer is happning.
townSchool.numOfStudents.value += 1 ;
citySchool.numOfStudents.value += 1 ;

 
*/

//=================================|  replace nil  oprater |=================================|

/*
let publisher = ["A","B","C",nil,"D",nil].publisher;


publisher
    .replaceNil(with: "*") // replace nil with *
    .map { $0! }           // Unwrapped optional value
    .sink { print($0) }


*/



//=================================|  Empity  oprater |=================================|
// Empity oprator we can use as completion of task
/*
let empty = Empty<Int, Never>()

empty.sink { val in
    print(val)
}

*/



//=================================|  Scan  oprater |=================================|
// Scan oprator we can use to scan each element and reproduce new element.

let publisher = (0...12).publisher

publisher.scan([]) { numArr, value -> [Int] in
    numArr + [value]
}.sink { arr in
    print(arr)
}





















