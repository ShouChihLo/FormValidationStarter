//
//  ContentView.swift
//  FormValidationStarter
//
//  Created by 羅壽之 on 2024/12/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView() {
            HomePage()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
            CustomPage()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Custom")
                }
        }
    }
}

struct HomePage: View {
    var body: some View {
        Text("Home Page")
            .font(.title)
    }
}

struct CustomPage: View {
    @State var showSignIn = false
    @State var showSignUp = false
    
    var body: some View {
        VStack {
            Text("Welcome")
                .font(.title)
            
            // Sign In Button
            Button {
                showSignIn.toggle()
            } label: {
                HStack {
                    Image(systemName: "person.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Sign In")
                        .font(.headline)
                }
            }
            .buttonStyle(MyButtonStyle(bgColor: Color.blue))
            
            // Sign Up Button
            Button {
                showSignUp.toggle()
            } label: {
                HStack {
                    Image(systemName: "person.badge.plus.fill")
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Sign Up")
                        .font(.headline)
                }
            }
            .buttonStyle(MyButtonStyle(bgColor: Color.green))
            
            .sheet(isPresented: $showSignUp) {
                SignUpView()
            }
            
            // Logout Button
            Button {
                // process logout
            } label: {
                HStack {
                    Image(systemName: "arrow.backward.circle.fill") // Icon
                        .resizable()
                        .frame(width: 20, height: 20)
                    Text("Logout") // Text
                        .font(.headline)
                }
            }
            .buttonStyle(MyButtonStyle(bgColor: Color.red))
            
            
        }
    }
}

struct MyButtonStyle: ButtonStyle {
    var bgColor: Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
            .background(bgColor)
            .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

