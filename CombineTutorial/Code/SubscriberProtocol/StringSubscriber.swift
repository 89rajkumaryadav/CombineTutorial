//
//  StringSubscriber.swift
//  CombineTutorial
//
//  Created by Rajkumar Yadav on 9/14/22.
//

import Foundation
import SwiftUI
import Combine


//MARK: Custom subscriber creatin using Subscriber protocol

class subscriberVM{
    
    init(){
        let arrPublish = ["A","B","C","D","E","F","G","H"].publisher
        let subscriber = StringSubscriber()
        
        arrPublish.subscribe(subscriber)
       
    }
}


// Defined custom subscriber
class StringSubscriber: Subscriber{
   
    typealias Input = String
    typealias Failure = Never
    
    func receive(subscription: Subscription) {
        subscription.request(.max(2)) // back pressure(back pressure tells plulisher that how mush item i need)
    }
    
    func receive(_ input: String) -> Subscribers.Demand {
        print(input);
        
        //Changing the demand here, which is previousely set in backpressure
      //  return .max(.zero) // demand is not going to increase
        return .none
       // return .max(1) // It will increase the demand each time which is previousely set in subscriptions bacpressure.
        
        //return .unlimited // It will send all data
    }
    
    func receive(completion: Subscribers.Completion<Never>) {
        print("Completed");
    }
    

    
}


