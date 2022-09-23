import UIKit
import Combine

//=================================| first oprater |=================================|
// first oprater will give First element of the sequence.
/*
let publisher = ["A","B","C","D"].publisher

publisher.first().sink {
    print($0)
}

publisher.first(where: { "Cat".contains($0) }).sink {
    print($0)
}

 
 // last oprater will give last element of the sequence.
print("Last Publisher")

publisher.last().sink {
    print($0)
}

*/


//=================================| max , min oprater |=================================|
/*
// min Max will give us minimum or maxmimum value of sequence.
let publisher = [1,-45,3,45,100].publisher

publisher
//.max()
    .min()
    .sink {
        print($0)
}

*/


//=================================| output oprater |=================================|
/*
// it will give us the paticular index value of the sequence.
let publisher = ["A","B","C","D"].publisher

publisher.output(at: 2).sink {
    print($0)
}

print("Output(in)")

publisher.output(in: (0...2)).sink {
    print($0)
}


*/


//=================================| contains oprater |=================================|
// contains oprater will teturn true or false.
/*
let publisher = ["A","B","C","D"].publisher

publisher.contains("F").sink {
    print($0)
}

*/




//=================================|allSatisfy  oprater |=================================|
// it will return true or false if condition satisfield
/*
//let publisher = [12,2,14,4,6,8].publisher
let publisher = [2,4,14,4,6,8].publisher
publisher.allSatisfy { $0 % 2 == 0 }.sink { allEven in
    print(allEven)
}


*/


//=================================|reduce  oprater |=================================|
//reduce oprater will go through all sequence and produce single result.

/*
let publisher = [1,2,3,4,5,6].publisher

publisher.reduce(0) { accumulator, value in
    print("accumulator: \(accumulator) and the value is \(value)")
    return accumulator + value
}.sink {
    print($0)
}
*/























