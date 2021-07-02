//
//  ContentView.swift
//  chatApp
//
//  Created by Farhandika Zahrir Mufti guenia on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    @StateObject var model = ChatModel()
    @State var chat:String = ""
    var body: some View {
        VStack{
            Header()
            //ChatContent()
            Spacer()
            //Chat and Input drawer
            BottomDrawer(chat: $chat)
        }
        .navigationBarTitle("memes")
        .navigationBarHidden(true)
        .background(Color.pink.edgesIgnoringSafeArea(.top))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        HStack {
            //Exit
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark.circle.fill")
                    .foregroundColor(.white)
            }
            Spacer()
            //Group name
            VStack {
                Text("Group")
                    .font(.title)
                    .fontWeight(.bold)
            }.foregroundColor(.white)
            Spacer()
            //Settings or person image
            Image(systemName: "xmark.circle.fill")
                .foregroundColor(.white)
        }.padding()
    }
}

struct BottomDrawer: View {
    @Binding var chat:String
    //@State var isChatTapped:Bool = false
    var body: some View {
        VStack {
            ScrollView{
                HStack {
                    VStack{
                        HStack{
                            Text("makan bang")
                                .fontWeight(.regular)
                            Spacer()
                        }
                    Text("Why is it not working? like what the fucjk mejs ssjshsjshshs, just sti")
                        .padding(.horizontal,-5)
                        .padding(.vertical,10)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .background(Color.pink)
                        .cornerRadius(15, corners: [.topLeft, .topRight,.bottomRight])
                    }
                    Spacer()
                }
                //batas suci
                HStack {
                    Spacer()
                    Text("i do not know")
                        .padding(.horizontal,-5)
                        .padding(.vertical,10)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .background(Color.blue)
                        .cornerRadius(15, corners: [.topLeft, .topRight,.bottomLeft])
                }
            }
            
            Spacer()
            HStack(spacing:0){
                TextField("Aaa",text:$chat)
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(Color.black.opacity(0.06))
                    .clipShape(Capsule())
                    .animation(.easeInOut)
                Spacer()
                Button(action: {
                    chat = ""
                }) {
                    if chat != "" {
                        Image(systemName: "paperplane.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                }.animation(.linear)
            }
        }
        .padding()
        .frame(width:UIScreen.width,height:UIScreen.height/1.19)
        .background(Color.white)
        .cornerRadius(15, corners: [.topLeft, .topRight])
    }
}

