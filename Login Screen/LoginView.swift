//
//  ContentView.swift
//  Login Screen
//
//  Created by Vitor Hugo on 15/05/21.
//

import SwiftUI

struct LoginView: View {
    
    @State var password: String = ""
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    print("Login Button")
                }, label: {
                    Text("Login")
                        .foregroundColor(Color(UIColor(red: 0.84, green: 0.78, blue: 0.00, alpha: 1.00)))
                        .overlay(
                                        Rectangle()
                                            .foregroundColor(Color(UIColor(red: 0.84, green: 0.78, blue: 0.00, alpha: 1.00)))
                                            .frame(height: 1).offset(y: 8)
                                        , alignment: .bottom)
                        .frame(height: 40, alignment: .center)
                        
                })
                .accentColor(.black)
                .padding(.trailing, 30)
                
                
                Button(action: {
                    print("Sign Up Button")
                }, label: {
                    Text("Sign Up")
                        .frame(height: 40, alignment: .center)
                })
                .accentColor(.black)
                
                Spacer()
                
                Rectangle()
                    .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(Image("woman")
                                .resizable()
                                .frame(width: 45, height: 45, alignment: .center))
                    .cornerRadius(3.0)
                    .foregroundColor(Color.black)
                    
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 20)
            Spacer()
            HStack {
                VStack(alignment: .leading) {
                    Text("Welcome back,")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Rebecca")
                        .font(.largeTitle)
                        .fontWeight(.black)
                        .foregroundColor(Color(UIColor(red: 0.84, green: 0.78, blue: 0.00, alpha: 1.00)))
                }
                Spacer()
            }
            .padding(30)
            
            VStack {
                TextField("Password", text: $password)
                    .overlay(Rectangle().frame(height: 1).offset(y: 10).foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/), alignment: .bottom)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 15)
                    .textContentType(.password)
                    
            }
            Divider()
                .padding(20)
            HStack {
                Image("google")
                    .resizable()
                    .frame(width: 25, height: 25, alignment: .center)
                    .padding(.trailing, 20)
                Image("facebook")
                    .resizable()
                    .frame(width: 15, height: 25, alignment: .center)
                Spacer()
            }
            .padding(.horizontal, 30)
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    print("Segue Button")
                }, label: {
                    Image(systemName: "chevron.forward")
                        .accentColor(Color.black)
                })
                .padding(.horizontal, 40)
                .padding(.vertical, 20)
                .background(Color(UIColor(red: 0.84, green: 0.78, blue: 0.00, alpha: 1.00)))
                .cornerRadius(10)
            }
            .padding(30)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
