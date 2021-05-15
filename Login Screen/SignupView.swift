//
//  SignupView.swift
//  Login Screen
//
//  Created by Vitor Hugo on 15/05/21.
//

import SwiftUI

struct SignupView: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    print("Login Button")
                }, label: {
                    Text("Login")
                    
                })
                .accentColor(.black)
                .padding(.trailing, 30)
                
                
                Button(action: {
                    print("Sign Up Button")
                }, label: {
                    Text("Sign Up")
                        .foregroundColor(Color(UIColor(red: 1.00, green: 0.68, blue: 0.75, alpha: 1.00)))
                        .overlay(
                            Rectangle()
                                .foregroundColor(Color(UIColor(red: 1.00, green: 0.68, blue: 0.75, alpha: 1.00)))
                                .frame(height: 1).offset(y: 8)
                            , alignment: .bottom)
                        .frame(height: 40, alignment: .center)
                        .frame(height: 40, alignment: .center)
                    
                })
                .accentColor(.black)
                
                Spacer()
                
                Rectangle()
                    .frame(width: 48, height: 48, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .overlay(Image(systemName: "person")
                                .foregroundColor(.black)
                                .frame(width: 45, height: 45, alignment: .center))
                    .cornerRadius(3.0)
                    .foregroundColor(Color(UIColor(red: 1.00, green: 0.68, blue: 0.75, alpha: 1.00)))
                
            }
            .padding(.horizontal, 30)
            .padding(.vertical, 20)
            Spacer()
            HStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hello")
                            .font(.largeTitle)
                            .fontWeight(.regular)
                        Text("beautiful,")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color(UIColor(red: 1.00, green: 0.68, blue: 0.75, alpha: 1.00)))
                            
                    }
                    .padding(.vertical, 10)
                    Text("Enter your information bellow or login with a social account")
                        .font(.headline)
                        .fontWeight(.regular)
                }
                Spacer()
            }
            .padding(30)
            
            VStack {
                TextField("Email Address", text: $email)
                    .overlay(Rectangle().frame(height: 1).offset(y: 10).foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/), alignment: .bottom)
                    .padding(.horizontal, 30)
                    .padding(.vertical, 15)
                    .textContentType(.password)
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
                .background(Color(UIColor(red: 1.00, green: 0.68, blue: 0.75, alpha: 1.00)))
                .cornerRadius(10)
            }
            .padding(30)
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
