//
//  ContentView.swift
//  first app
//
//  Created by Sameer,s Macbook on 03/07/2024.
//

import SwiftUI
// difference b=w oop ans the function programing in the gernal
// oop = data encaplustation  and funtion al programming donot use that word at all
// behaves like aaaaaaaa

// content view behave like a view

// struct is like the collection of the varibles and fuction
// and the type of the struct is the contentview and View is like

// var i : int

// this is called the computed body
/*
 VStack {
     Image(systemName: "globe")
         .imageScale(.large)
         .foregroundStyle(.tint)
     Text("Hello sameer in 2030 this is our  first app in ios ")
 }
 .padding()
 }
 }
 */


struct ContentView: View {
//var--varible  body--name : some View --- type of view decided on the
//    
    var body: some View {
//        vstack is the container which contain  all the structs and it can be align
//        techically vstack is the function that can return a view of different type and tuple view and its bag of lets say the text and image
        
        VStack(alignment: .leading , spacing: 20){
//            image is struct which behaves like a content view and it contain argumnets in
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello sameer shahid in 2030 this is our  first app in a  the ios ")
        }
        
//         padding is the function that can be come with view class for eg
        .padding()
        
    }
    
    
    
}



#Preview {
    ContentView()
}
