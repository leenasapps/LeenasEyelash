//
//  IWillGoThere.swift
//  LeenasEyelash
//
//  Created by Lehana on 26/02/2022.
//

import SwiftUI

struct IWillGoThere: View{
    @State var dateAndTime: Date = Date()
    
    var dateClosedRange: ClosedRange<Date> {
//        let min = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        let max = Calendar.current.date(byAdding: .month, value: 3, to: Date())!
        return Date()...max
    }
    var body: some View{
        VStack{
            Text("Our Location")
                .font(.title)
                .fontWeight(.semibold)
                .underline()
            Spacer()
            Text("Leenas Eyelash is in Sharjah. ")
            
            
            Text("Do you want a parking ready for you")
                .font(.title)
                .fontWeight(.semibold)
                .underline()
            Spacer()
            
            HStack(spacing: 14){
                Button {
                    //kdkd//
                } label: {
                    Text("No, Thank You.")
                        .padding()
                        .background(Color.mint)
                        .cornerRadius(20)
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                }
                Button {
                    //kdkd//
                } label: {
                    Text("Yes, Thank You.")
                        .padding()
                        .background(Color.mint)
                        .cornerRadius(20)
                        .frame(width: 200, height: 50)
                        .foregroundColor(.white)
                }
            }
            Spacer()
            
            Text("Apointment Time and Date")
                .font(.title)
                .fontWeight(.semibold)
                .underline()
//            DatePicker("Appointment Time and Date", selection: $dateAndTime)
            DatePicker("Appointment Time and Date", selection: $dateAndTime, in: dateClosedRange)
            Spacer()
            
            
        }
        .padding()
        
    }
}

struct IWillGoThere_Previews: PreviewProvider {
    static var previews: some View {
        IWillGoThere()
    }
}
