//
//  NotificationCeterPublisher.swift
//  CombineTutorial
//
//  Created by Rajkumar Yadav on 9/16/22.
//

import Foundation


class NotificationCenterPublisher{
    
    init(){
        let notification = Notification.Name("MyNotification")
        
        let publisher = NotificationCenter.default.publisher(for: notification, object: nil)
        
        let subscription = publisher.sink { _ in
                  print("Notification recevied")
        }
        
        NotificationCenter.default.post(name: notification, object: nil) // publishing subscription after subscribed will only work.
        
        subscription.cancel()
        
        NotificationCenter.default.post(name: notification, object: nil)// After canceling the subscription it will not work.
        
    }
}
