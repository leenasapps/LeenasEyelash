//
//  Info1.swift
//  LeenasEyelash
//
//  Created by Lehana on 26/02/2022.
//

import SwiftUI

struct Info1: View  {
    var body: some View{
        
        VStack{
            Image("Eyelash1img")
                .resizable()
                .frame(width: 150, height: 150)
            Spacer()
            Text("Which way?")
                .font(.title)
                .fontWeight(.semibold)
                .underline()
            
            NavigationLink {
                IWillGoThere()
            } label: {
                Text("I will go there ")
                
                    .padding()
                    .background(Color.mint)
                    .cornerRadius(20)
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
            }
            Text("OR")
                .font(.title2)
            
            NavigationLink {
                LetHimComeHere()
            } label: {
                Text("Should we go there")
                    .padding()
                    .background(Color.mint)
                
                    .cornerRadius(20)
                    .foregroundColor(.white)
            }
            Spacer()
            Text("Info")
                .font(.title)
                .fontWeight(.semibold)
                .underline()
            Text("The price will increase 2 dirhams more if we come ")
            
            Spacer()
            
            
        }
        
        
    }
    
}

struct Info1_Previews: PreviewProvider {
    static var previews: some View {
        Info1()
    }
}
