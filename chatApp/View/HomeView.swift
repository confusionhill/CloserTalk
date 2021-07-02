//
//  HomeView.swift
//  chatApp
//
//  Created by Farhandika Zahrir Mufti guenia on 22/06/21.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var userData:UserData = UserData()
    var body: some View {
        NavigationView{
            VStack {
                //MArk : topbar
                TopBar(userData: userData)
                Spacer()
                //Mark : Content
                ScrollView {
                    VStack {
                        ForEach(0..<5){_ in
                            NavigationLink(
                                destination: ContentView(),
                                label: {
                                    Chats()
                                })
                        }
                    }
                }
                .padding()
                .frame(width:UIScreen.width,height:UIScreen.height/1.16)
                .background(Color.white)
                .cornerRadius(15, corners: [.topLeft, .topRight])
               // .ignoresSafeArea(/*@START_MENU_TOKEN@*/.keyboard/*@END_MENU_TOKEN@*/, edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
            }
            .background(Color.pink.ignoresSafeArea(edges: .top))
            .navigationTitle("Chats")
            .navigationBarHidden(true)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct Chats: View {
    var text:String = """
my gf told me that she does not love me anyomore, and i was about to propose to her
"""
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width:50,height:50)
                VStack(alignment:.leading){
                    Text("Title")
                        .font(.title3)
                        .fontWeight(.semibold)
                    Text(text)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
        }
    }
}

struct TopBar: View {
    @ObservedObject var userData:UserData
    var body: some View {
        HStack {
            NavigationLink(
                destination: JoinRoomView(),
                label: {
                    Image(systemName: "plus")
                        .resizable()
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .scaledToFit()
                        .foregroundColor(.white)
                })
            Spacer()
            Text("Chats")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
            Button(action: {
                userData.isLogin.toggle()
                print(userData.isLogin)
            }) {
                Image("ktm")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .scaledToFit()
            }
        }.padding()
    }
}
