//
//  Controller.swift
//  chatApp
//
//  Created by Farhandika Zahrir Mufti guenia on 23/06/21.
//

import SwiftUI

struct Controller: View {
    @StateObject var userData = UserData()
    var body: some View {
        LoginView(userData:userData)
            .fullScreenCover(isPresented: $userData.isLogin, content: {
                HomeView(userData: userData)
            })
    }
}

struct Controller_Previews: PreviewProvider {
    static var previews: some View {
        Controller()
    }
}
