//
//  RegisterView.swift
//  chatApp
//
//  Created by Farhandika Zahrir Mufti guenia on 24/06/21.
//

import SwiftUI

struct RegisterView: View {
    @State var date = Date()
    @State var email:String = ""
    @State var pass1:String = ""
    @State var pass2:String = ""
    @State var isShow:Bool = false
    var body: some View {
        VStack {
            Text("register")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Email", text: $email)
                .padding()
                .background(Color.white.opacity(0.5))
                .cornerRadius(15)
            TextField("Password", text: $pass1)
                .padding()
                .background(Color.white.opacity(0.5))
                .cornerRadius(15)
            TextField("Re-type Password", text: $pass2)
                .padding()
                .background(Color.white.opacity(0.5))
                .cornerRadius(15)
            Spacer()
            Button(action: {}) {
                Text("Sign-up")
                    .padding()
                    .frame(width:UIScreen.width/1.5)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(15)
                
            }
            }
        .padding()
        .background(Color.pink.ignoresSafeArea())
        .ignoresSafeArea(.keyboard, edges: .bottom)
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
