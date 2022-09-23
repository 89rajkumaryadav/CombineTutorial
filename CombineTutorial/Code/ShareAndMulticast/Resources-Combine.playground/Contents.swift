import UIKit
import Combine

/*
 If we are creating multiple scbscription, then it will download same data each time. with the help of .share() oprater we can
 share data to other subscriber.
 
 Note:-  It will not share data to subscriber if it is subscribing after subscription excution completed. It will only share data to already subscribed user. The solution for this is multicast oprater
 */
var subscription3: AnyCancellable? = nil

guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    fatalError("Invalid URL")
}

let request = URLSession.shared.dataTaskPublisher(for: url).map(\.data).print().share()

let subscription1 = request.sink(receiveCompletion: { _ in }, receiveValue: {
    print("Subscription 1")
    print($0)
})

let subscription2 = request.sink(receiveCompletion: { _ in }, receiveValue: {
    print("Subscription 2")
    print($0)
})

DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
    subscription3 = request.sink(receiveCompletion: { _ in }, receiveValue: {
        print("Subscription 3")
        print($0)
    })
}
