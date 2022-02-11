//
//  ContentView.swift
//  Shared
//
//  Created by 加藤健吾 on 2022/02/06.
//

import SwiftUI

struct ContentView: View {
    @State var buttonText = "Button"
    @State var timeText: Int = 1
    var timer = TimerCount()
    var body: some View {
        Text(String(timeText))
            .padding()
        
        Button(action: {
            timer.startTimer { count in
                timeText = count
            }
                }){
                    Text(buttonText)
                       .font(.largeTitle)
                }
    }
    
    func start() {
        
    }
}

class TimerCount {
    var count = 1
    var counter: ((Int) -> ())?
    
    init () {
        count = 1
    }
    
    func startTimer(action: ((Int) -> ())?) {
        counter = action
        Timer.scheduledTimer(timeInterval: 1.0,
                             target: self,
                             selector: #selector(countup), userInfo: nil,
                             repeats: true)
    }
    
    @objc func countup() {
        count += 1
        if let counter = counter {
            counter(count)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
