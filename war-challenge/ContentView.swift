//
//  ContentView.swift
//  war-challenge
//
//  Created by karma on 1/10/22.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Button {
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
                                
                            Text("0")
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
                                
                            Text("0")
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
