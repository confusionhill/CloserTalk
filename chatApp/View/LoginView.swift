//
//  LoginView.swift
//  chatApp
//
//  Created by Farhandika Zahrir Mufti guenia on 22/06/21.
//

import SwiftUI

struct LoginView: View {
    @ObservedObject var userData:UserData = UserData()
    @State var username:String = ""
    var body: some View {
        NavigationView {
           VStack {
                    Image(systemName: "graduationcap.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100, alignment:.center)
                        .foregroundColor(.white)
                        .padding(.top,30)
                    Text("Study plus")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                    Spacer()
                    //Mark : The login Thinggy
            //TextField("Makan bang",text:$username)
                    LoginStuffs(userData: userData).edgesIgnoringSafeArea(.bottom)
            }
           .background(Color.pink.edgesIgnoringSafeArea(.top))
            .navigationTitle("Login")
            .navigationBarHidden(true)
        }
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct LoginStuffs: View {
    @ObservedObject var userData:UserData
    @State var username:String = ""
    @State var password:String = ""
    @State var isShow:Bool = false
    var body: some View {
        VStack{
            Text("LOGIN")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.pink)
                .multilineTextAlignment(.center)
            TextField("Enter a email",text:$username)
                //.padding(.top,20)
                .padding()
                //.frame(height:50)
            Divider()
            HStack {
                passText(isShow: $isShow, password: $password, text: "Enter a password")
                    .padding()
                    //.frame(maxHeight:50)
                Spacer()
                Button(action: {
                    isShow.toggle()
                }) {
                    Image(systemName: isShow ? "eye.slash.fill" : "eye.fill")
                        .foregroundColor(.secondary)
                }

            }
            Divider()
                .padding(.bottom)
            Button(action: {
                userData.isLogin.toggle()
            }) {
                Text("ENTER")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(width:UIScreen.width-50,height:55)
                    .background(Color.pink)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    //.padding()
            }
            .padding(.top,35)
            .padding()
            Spacer()
            HStack {
                Text("Dont have an account?")
                NavigationLink(
                    destination: RegisterView(),
                    label: {
                        Text("Sign up").foregroundColor(.red)
                    })
                    .accentColor(.white)
            }
        }
        .padding()
        .frame(width:UIScreen.width,height:UIScreen.height/1.5)
        .background(Color.white)
        .cornerRadius(15, corners: [.topLeft, .topRight])
    }
}
