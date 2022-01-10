//
//  ContentView.swift
//  war-challenge
//
//  Created by karma on 1/10/22.
//

import SwiftUI

struct ContentView: View {
    // properties
    // @State is a property wrapper which allows the property to have mutable values
    //becasue properties are value type datatypes
    @State private var playerCard="card4"
    @State private var cpuCard="card10"
    @State private var playerScore=0
    @State private var cpuScore=0
    
    var body: some View {
        ZStack(){
            Image("background").ignoresSafeArea()
            
            VStack(){
                Spacer()
                Image("logo")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack(){
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    // Generate random numbers from 2 - 14 so we can append it to the cards
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    print(String(playerRand)+","+String(cpuRand))
                    // Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // Update the score
//                    if(playerRand == cpuRand){
//                        playerScore += 1
//                        cpuScore += 1
//                    }
//                    else if(playerRand > cpuRand){
//                        playerScore += 1
//                    }else if(cpuRand > playerRand){
//                        cpuScore += 1
//                    }else{
//                        print("Error")
//                    }
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                
                    print("deal")
                } label: {
                    Image("dealbutton")
                }

//                Image("dealbutton")
                Spacer()
                VStack(){
                    
                    HStack(){
                        Spacer()
                        VStack(){
                            Text("Player")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                                .padding(.bottom, 10.0)
                                
                            Text(String(playerScore))
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            
                        }
                        Spacer()
                        VStack(){
                            Text("CPU")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding(.bottom, 10.0)
                                
                            Text(String(cpuScore))
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            
                        }
                        Spacer()
                        
                    }
                    
                }
                
                Spacer()
            }
            
            
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
            
    }
}
