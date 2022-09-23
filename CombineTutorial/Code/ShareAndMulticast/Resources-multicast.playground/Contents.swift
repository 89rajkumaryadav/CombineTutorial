import UIKit
import Combine


// Send data to multiple scbscriber, no need to download data each time, share same data to all subsciber
guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
    fatalError("Invalid URL")
}

let subject = PassthroughSubject<Data, URLError>()

let request = URLSession.shared.dataTaskPublisher(for: url).map(\.data).print().multicast(subject: subject)

let subscription1 = request.sink(receiveCompletion: { _ in }, receiveValue: {
    print("Subscription 1")
    print($0)
})

let subscription2 = request.sink(receiveCompletion: { _ in }, receiveValue: {
    print("Subscription 2")
    print($0)
})

    
let subscription3 = request.sink(receiveCompletion: { _ in }, receiveValue: {
        print("Subscription 3")
        print($0)
})

request.connect()
subject.send(Data())




