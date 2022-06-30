//
//  GetUserData.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 30.06.2022.
//

import Foundation

let networkUsersManager = NetworkUsersManager()
func getUserData(completionHandler: @escaping(User) -> Void) {
    networkUsersManager.fetchUserData { user in
        completionHandler(user)
    }
    
}
