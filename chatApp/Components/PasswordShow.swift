//
//  PasswordShow.swift
//  chatApp
//
//  Created by Farhandika Zahrir Mufti guenia on 24/06/21.
//

import Foundation
import SwiftUI

struct passText: View {
    @Binding var isShow:Bool
    @Binding var password:String
    var text:String = "Enter a password"
    var body: some View{
        if isShow{
            TextField(text, text: $password)
        } else {
            SecureField(text, text: $password)
        }
    }
}
