//
//  ChatView.swift
//  chatApp
//
//  Created by Farhandika Zahrir Mufti guenia on 22/06/21.
//

import Foundation



class ChatModel:ObservableObject {
    var text = ""
    @Published var arrayOfMessages : [String] = []
    @Published var arrayOfPositions : [BubblePosition] = []
    @Published var position = BubblePosition.right
}

class UserData:ObservableObject {
    @Published var isLogin:Bool = false
    var isText:String = "loading..."
    
    func userLogin() ->Void{
        self.isLogin.toggle()
    }
}
