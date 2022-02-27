//
//  ContentView.swift
//  LeenasEyelash
//
//  Created by Lehana on 05/01/2022.
//

import SwiftUI
//struct ContentView2: View {
//    var body: some View{
//        if <#condition#> {
//            <#code#>
//        }
//    }
//}
struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var wrongUsername: Int = 0
    @State private var wrongPassword: Int = 0
    @State private var showScreen: Bool = false
    
    var body: some View {
        NavigationView{
            VStack{
                
                Image("EyelashLogo")
                    .resizable()
                
                    .frame(width: 150, height: 100)
                Text("Leenas Eyelash")
                    .italic()
                    .font(.headline)
                Spacer()
                TextField("Username", text: $username)
                    .padding(10)
                    .background(Color.gray.opacity(0.24))
                    .cornerRadius(10)
                    .frame(width: 300, height: 50)
                    .border(.red, width: CGFloat(wrongUsername))
                
                
                SecureField("Password", text: $password)
                    .padding(10)
                    .background(Color.gray.opacity(0.24))
                    .cornerRadius(10)
                    .frame(width: 300, height: 50)
                    .border(.red, width: CGFloat(wrongPassword))
                Button("LOGIN") {
                    IdentifyUser(username: username , password: password)
                }
                .frame(width: 300, height: 50)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                NavigationLink(destination: EyelashOptions() , isActive: $showScreen){
                    EmptyView()
                    
                }
                
                Spacer()
                
            }
            
            
            
        }
        
    }
    func IdentifyUser(username: String, password: String) {
        if username == "Abc" {
            wrongUsername = 0
            showScreen = true
            if password == "123" {
                wrongPassword = 0
                showScreen = true
            }else{
                wrongPassword = 2
            }
        }else{
            wrongUsername = 2
        }
    }
    
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
