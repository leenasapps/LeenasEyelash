//
//  LetHimComeHere.swift
//  LeenasEyelash
//
//  Created by Lehana on 26/02/2022.
//

import SwiftUI

struct LetHimComeHere: View{
    @State var location: String = ""
    @State var faltNumber: String = ""
    @State var message: String = "Your Location"
    @State var dateAndTime: Date = Date()
    var body: some View{
        NavigationView {
            VStack{
                Text("Your Location")
                    .font(.title)
                    .fontWeight(.semibold)
                    .underline()
                TextField("Location", text: $location)
                    .padding(10)
                    .background(Color.gray.opacity(0.34))
                    .cornerRadius(39)
                    .frame(width: 300, height: 50)
                Spacer()
                
                Text("Your Flat Number")
                    .font(.title)
                    .fontWeight(.semibold)
                    .underline()
                Spacer()
                TextField("Flat Number", text: $faltNumber)
                    .padding(10)
                    .background(Color.gray.opacity(0.34))
                    .cornerRadius(39)
                    .frame(width: 300, height: 50)
                
                Text("Appointment Time and Date")
                    .font(.title)
                    .fontWeight(.semibold)
                    .underline()
                DatePicker("Appointment Time and Date", selection: $dateAndTime)
                
                
                Spacer()
                Button ("SAVE") {
                    // ADD A BLOCK OF CODE TO SAVE
                }
                .padding(10)
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .cornerRadius(39)
                .foregroundColor(.white)
                
                
                
                
                
            }
        }
    }
}

struct LetHimComeHere_Previews: PreviewProvider {
    static var previews: some View {
        LetHimComeHere()
    }
}
