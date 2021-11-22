//
//  ContentView.swift
//  firestore-demo
//
//  Created by Sriram Kiron on 11/21/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        
        List (model.list) { item in
            Text(item.name)
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
