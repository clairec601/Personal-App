//
//  ContentView.swift
//  Personal App
//
//  Created by Claire Chang on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var fact = ""
    @State private var number = ""

    
    var factArray = ["i order chipotle religiously (i get a bowl!)", "i can play four instruments!", "i'm korean-american!", "i'm a rising senior in high school!", "these days my spotify plays a lot of kpop + taylor swift!"]
    
    var body: some View {
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
               
            
            VStack {
                Text("hi, my name is claire!")
                    .font(.title)
                    .fontWeight(.semibold)
                Image("duck2")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .border(Color.purple, width: 2)
                    .padding([.leading, .bottom, .trailing])
                
                
                Button("type a number 1-5 to reveal a fun fact!") {
                    var a = Int(String(number))
                    a = a! - 1
                    fact = factArray[a!]
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .padding(.top)
                
                TextField("type a number...", text: $number)
                    .frame(width: 200.0, height: 30.0)
                    .multilineTextAlignment(.center)
                    .border(.purple, width: 2)
                
                
                Text(fact)
                    .font(.title2)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .padding()
                
            }
            .padding()
            .background(Rectangle() .foregroundColor(.white))
            .cornerRadius(15)
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
