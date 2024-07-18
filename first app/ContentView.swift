
//  ContentView.swift
//  first app
//  Created by Sameer,s Macbook on 03/07/2024.
import SwiftUI
struct ContentView: View {
    
    let emojis : Array<String> = ["👻", "🕷️", "🎃", "👿","👻", "🕷️"]
    @State var cardcount : Int = 4
    
    var body: some View {
        VStack {
        
            cards;
                
            Spacer()
            
            HStack {
    
                cardremove;
                Spacer()
                cardadd;
            }
            
            
        }
    }
    
    var cards : some View {
        LazyVGrid( columns: [GridItem(.adaptive(minimum: 90))]){
            ForEach(0..<cardcount, id: \.self) { index in
                CardView(content: emojis[index])
            }
        }
        .foregroundColor(.orange)
        .padding()
    }
    
    
    var cardremove: some View {
        
        Button(action: {
            if cardcount>1{
                cardcount -= 1
            }
        }, label: {
            Image(systemName:"rectangle.stack.badge.minus.fill")
            
        })
        
        .foregroundColor(.blue)
        .padding()
        .imageScale(.large)
        .font(.largeTitle)
    }
    
    
    var cardadd : some View {
        Button(action: {
            if cardcount<emojis.count{
            cardcount += 1
            }
        }, label: {
            Image(systemName:"rectangle.stack.badge.plus.fill")
        
        })
        .foregroundColor(.blue)
        .padding()
        .imageScale(.large)
        .font(.largeTitle)
   }
    
    
}


struct CardView: View {
    @State  var isFace : Bool = true
    var content : String
    var body: some View {
    ZStack(){
           
            let base = RoundedRectangle(cornerRadius: 12)
            
        Group {
                base
                    .foregroundColor(.white)
                base
                    .strokeBorder(lineWidth: 2)
                Text(content).font(.largeTitle)
            }
                .opacity(isFace ? 1 : 0)
                base.fill().opacity(isFace ? 0 : 1)
        }

        .onTapGesture {
            isFace.toggle()
        }
    }
  
}
 
#Preview {
    ContentView()
}

