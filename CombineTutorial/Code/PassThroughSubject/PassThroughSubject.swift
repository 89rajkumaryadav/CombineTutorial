//
//  PassThroughSubject.swift
//  CombineTutorial
//
//  Created by Rajkumar Yadav on 9/14/22.
//

import Foundation
import Combine
import SwiftUI


enum subError: String, Error{
    case subsCriberError = "Subscriber error"
}

class CustomSubscriber: Subscriber {
    typealias Input = Int
    typealias Failure = subError
    
    func receive(subscription: Subscription) {
        subscription.request(.unlimited)
    }
    
    func receive(_ input: Int) -> Subscribers.Demand {
        
        print(input)
        return .unlimited
    }
    
    func receive(completion: Subscribers.Completion<subError>) {
        print("Completed- Error:- \(subError.subsCriberError)")
    }
    
}



class PassThroughVM{
    
    let subscription: AnyCancellable?
    
    init(){
        
        let customsubscriber = CustomSubscriber()
     //   let subject = PassthroughSubject<Int, subError>().eraseToAnyPublisher() // eraseToAnyPublisher will hide the main publisher, so the call will not know the actual type of publisher
        let subject = PassthroughSubject<Int, subError>()
        //Subscribing
        subject.subscribe(customsubscriber)
        
        
        
        // one more way to get subscription value, it is by closure
        
        subscription =  subject.sink { completion in
            
        } receiveValue: { value in
            print("Received in Sink: \(value)")
        }

        
        
        // Sending values
        subject.send(1)
        subject.send(2)
        subject.send(3)
        subject.send(4)
        
    }
}







