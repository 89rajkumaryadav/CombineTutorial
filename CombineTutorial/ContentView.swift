//
//  ContentView.swift
//  CombineTutorial
//
//  Created by Rajkumar Yadav on 9/14/22.
//

import SwiftUI
import Combine
struct ContentView: View {
    
    var subVM = subscriberVM()
    var passVM = PassThroughVM()
    var notification = NotificationCenterPublisher()
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

