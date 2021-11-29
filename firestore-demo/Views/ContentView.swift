//
//  ContentView.swift
//  firestore-demo
//
//  Created by Sriram Kiron on 11/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = ViewModel()
    
    @State var name = ""
    @State var notes = ""
    
    var body: some View {
        
        VStack {
        
            List (model.list) { item in
                Text(item.name)
            }
            
            Divider()
            
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Notes", text: $notes)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                
                // Call add data
                
            }, label: {
                Text("Add Todo Item")
            })
        }
            
    }
    
    init() {
        model.getData()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
