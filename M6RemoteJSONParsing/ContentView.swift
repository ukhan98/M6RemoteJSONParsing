//
//  ContentView.swift
//  M6RemoteJSONParsing
//
//  Created by mac owner on 2020-12-10.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            
            VStack{
        Text("Welcome to our remote Database parsing app")
            .padding(10)
                NavigationLink(destination: ListDataView()){
                        Text("Begin")
                            .padding(10)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
