    //
    //  RegisterForView.swift
    //  OnboardingScreen
    //
    //  Created by AMALITECH MACBOOK on 16/06/2023.
    //

import SwiftUI

struct RegisterForView: View {
    @Binding var selectedTab: Int
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    let screen = Screen()
    var body: some View {

        ZStack(alignment: .top) {
            VStack(alignment: .center, spacing: 40) {
                VStack(alignment: .center, spacing: screen.screenSize.height*0.05) {
                    Text("Create Account")
                        .font(.system(size: 40, weight: .bold))
                    
                    TextFieldView(fieldName: $name, fieldTitle: "Name", placeholder: "John Doe")
                    TextFieldView(fieldName: $email, fieldTitle: "E-mail", placeholder: "johndoe@gmail.com")
                    TextFieldView(fieldName: $password, fieldTitle: "Password", placeholder: "*********", isSecure: true)
                    
                    Button {
                        selectedTab+=1
                        
                    } label: {
                        Text("Create Account")
                            .font(.system(size: 22, weight: .light))
                    }.buttonStyle(NiceButtonStyle())
                        .padding(.vertical, 12)
                        .background(Color("ColorBlueBG"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("ColorBlueBG"), lineWidth: 1)
                        )
                    
                    Button {
                        selectedTab+=1
                    } label: {
                        HStack(spacing: 32) {
                            Image("google")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(16)
                                .frame(width: 40, height: 40)
                                .padding(.leading, 28)
                            Text("Sign up with Google")
                                .foregroundColor(.black)
                                .font(.system(size: 22, weight: .light))
                            Spacer()
                        }
                        
                    }.buttonStyle(NiceButtonStyle())
                        .padding(.vertical, 4)
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                    
                    HStack {
                        Text("Already have account?")
                            .font(.system(size: 22, weight: .light))
                            .foregroundColor(.gray)
                        Button {
                            selectedTab+=1
                        } label: {
                            Text("Log In")
                                .font(.system(size: 22, weight: .semibold))
                                .foregroundColor(Color("ColorBlueBG"))
                        }
                    }
                }
                .foregroundColor(.black)
            }
            .padding(.top, 48)
            .font(.system(size: 22, weight: .regular))
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            HStack {
                Button {
                    selectedTab-=1
                } label: {
                    HStack {
                        Image(systemName: "arrow.left")
                        Text("Back")
                    }
                }.padding(.leading, 16)
                Spacer()
                Text("Step 1 of 4")
                Spacer()
                Button {
                    selectedTab=4
                } label: {
                    Text("Exit")
                        .foregroundColor(.black)
                        .font(.system(size: 22, weight: .regular))
                        .padding(.trailing, 40)
                }
            }.padding(.top, 0)
                .foregroundColor(.black)
                .font(.system(size: 22, weight: .regular))
            }
        }
    }

