//
//  JoinRoomView.swift
//  chatApp
//
//  Created by Farhandika Zahrir Mufti guenia on 24/06/21.
//

import SwiftUI

struct JoinRoomView: View {
    @State var code:String = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        VStack(alignment:.leading,spacing:0){
            Text("Join a room")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top,80)
            Text("Enter the code below to join an existing room")
                .font(.footnote)
            Text("CODE")
                .fontWeight(.bold)
                .padding(.top,40)
            TextField("YOUR CODE",text:$code)
                .foregroundColor(.pink)
                .padding()
                .frame(height:50)
                .background(Color.white)
                .cornerRadius(10)
                .padding(.vertical)
            Button(action: {
                //sebelum ini, masukin dulu data ke sana
                self.code = ""
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Join Room")
                    .fontWeight(.bold)
                    .padding()
                    .frame(width:UIScreen.width-200)
                    .foregroundColor(.pink)
                    .background(Color.white)
                    .cornerRadius(10)
                    //.frame(width:UIScreen.width)

            }
            .padding(.vertical)
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.pink)
        .ignoresSafeArea()
    }
}

struct JoinRoomView_Previews: PreviewProvider {
    static var previews: some View {
        JoinRoomView()
    }
}
