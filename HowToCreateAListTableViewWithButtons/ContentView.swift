//
//  ContentView.swift
//  HowToCreateAListTableViewWithButtons
//
//  Created by ramil on 22/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let dataArray: [[String : String]] = [
        ["id":"1", "name":"Swift", "version":"5.1"],
        ["id":"2", "name":"Python", "version":"3.8"],
        ["id":"3", "name":"Go", "version":"1.8"],
        ["id":"4", "name":"Java", "version":"11.1"],
        ["id":"5", "name":"Kotlin", "version":"3.1"],
        ]
    
    var body: some View {
        List {
            ForEach((1..<self.dataArray.count).reversed(), id: \.self) { index in
                HStack {
                    Text(self.dataArray[index]["name"]!)
                    Spacer()
                    Button("Button \(index)") {
                        self.buttonAction(index: index)
                    }
                    .background(Color.green)
                    .foregroundColor(Color.white)
                }
            }
        }
    }
    
    func buttonAction(index: Int) {
        print(self.dataArray[index])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


