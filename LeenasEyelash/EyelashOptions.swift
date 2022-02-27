//
//  EyelashOptions.swift
//  LeenasEyelash
//
//  Created by Lehana on 26/02/2022.
//

import SwiftUI

struct EyelashOptions: View{
    
    @State var IfStarActive = false
    @State var IfStar2Active = false
    @State var IfStar3Active = false
    
    var body: some View{
        
        VStack{
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack{
                    VStack{
                        NavigationLink {
                            Info1()
                        } label: {
                            Image("Eyelash1img")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .padding()
                                .background(Color.white)
                        }
                        Text("10.0")
                    }
                    VStack{
                        NavigationLink {
                            Text("Hjjdk")
                        } label: {
                            Image("Eyelash2img")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .padding()
                                .background(Color.white)
                        }
                        Text("5.00")
                    }
                    VStack{
                        NavigationLink {
                            Text("Hjjdk")
                        } label: {
                            Image("Eyelash3img")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .padding()
                                .background(Color.white)
                        }
                        Text("2.50")
                    }
                    
                    VStack{
                        NavigationLink {
                            Text("Hjjdk")
                        } label: {
                            Image("Eyelash4img")
                                .resizable()
                                .frame(width: 150, height: 150)
                                .padding()
                                .background(Color.white)
                        }
                        Text("5.75")
                    }
                    
                }
                Spacer()
            }
            VStack(){
                Text("Please rate Leena's Eyelash")
                HStack(spacing: 24){
                    Button {
                        IfStarActive.toggle()
                        
                    } label: {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(IfStarActive ? Color.yellow : Color.gray)
                    }
                    Button {
                        IfStar2Active.toggle()
                        
                    } label: {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(IfStar2Active ? Color.yellow : Color.gray)
                    }
                    Button {
                        IfStar3Active.toggle()
                        
                    } label: {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(IfStar3Active ? Color.yellow : Color.gray)
                    }
                    
                }
            }
        }
    .navigationBarBackButtonHidden(true)
        
    }
    
}
struct EyelashOptions_Previews: PreviewProvider {
    static var previews: some View {
        EyelashOptions()
    }
}
