import UIKit
import Combine



/*
// Printing the events in combine

let publisher = (1...10).publisher
publisher.print("Debugging:- ")
    .sink(receiveValue: {print($0)})

*/



/*
//handleEvents for error tracking in combine.

guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    fatalError("Invalid URL")
}

let request = URLSession.shared.dataTaskPublisher(for: url)

let subscription = request
    .handleEvents(receiveSubscription: { _ in print("Subscription Received") }, receiveOutput: { _, _ in
        print("Received Output")
    }, receiveCompletion: { _ in print("Received Completion") }, receiveCancel: { print("Received Cancel") }, receiveRequest: {_ in print("Received Request") })
    .sink(receiveCompletion: {  print($0) }, receiveValue: { data, response in
    print(data)
})


*/


/*
// it will add breakpoint after certain output. It will run on actiuel class only

let publisher = (1...10).publisher

var cancellable = publisher
   // .breakpoint()
    .breakpoint(receiveOutput: { value in
        return value > 9
    })
    .sink {
    print($0)
    }
*/
