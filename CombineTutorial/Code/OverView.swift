//
//  OverView.swift
//  CombineTutorial
//
//  Created by Rajkumar Yadav on 9/23/22.
//

import Foundation

/*
 
// Publisher, Subscriber, Operators
 
 - PassThroughSubject<String,Never>()
 - CurrentValueSubject<String,Never>()
 - TypeEraser - eraseToAnyPublisher()
 
 
 
 
 //Transforming Operators
 
 - collect()
 - map()
 - map KeyPath
 - flatMap
 - replaceNil
 - replaceEmpty
 - scan
 
 
 
 
 // Filtering Operators
 - filter
 - removeDuplicates
 - compactMap
 - ignoreOutput
 - first
 - last
 - dropFirst
 - dropWhile
 - dropUntilOutputFrom
 - prefix
 
 
 
 
 //Combining Operator
 
 -prepend
 -append
 -switchToLatest
 -merge
 -combineLatest
 -zip
 
 
 
 
 //Sequence Operators
 -min/ max
 -first / last
 -output
 -count
 -contains
 -allSatisfy
 -reduce
 
 
 
 
 //Debugging Combine
 
 -Print()
 -handleEvents()
 -breakpoint()
 
 
 //Combine Timers
 
 -Runloop
 -DispatchQueue
 
 
 
 
 
 //Resources Combine
 
 -share
 -multicast
 
 
 
 // Go to main thread
 
 let sub = NotificationCenter.default
     .publisher(for: NSControl.textDidChangeNotification, object: filterField)
     .map( { ($0.object as! NSTextField).stringValue } )
     .filter( { $0.unicodeScalars.allSatisfy({CharacterSet.alphanumerics.contains($0)}) } )
     .debounce(for: .milliseconds(500), scheduler: RunLoop.main)
     .receive(on: RunLoop.main)
     .assign(to:\MyViewModel.filterString, on: myViewModel)

 
 
 
 // Others
 https://developer.apple.com/documentation/combine/receiving-and-handling-events-with-combine
 
 
 
 
 
 
 
 
 
 
 */
