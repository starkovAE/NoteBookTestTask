//
//  Users.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 30.06.2022.
//

import Foundation
struct Users {
    var userFirstName: String = ""
    var userSecondName: String = ""
    var gender: String = ""
    var email: String = ""
    var dataBirtday: String = ""
    var age: Int = 0
    var ageString: String {
        return String(age)
    }
    var iconUser: String = ""
    
    init?(userModel: UserData) { //Опциональный так как данных может не быть
//      userFirstName =
//        userSecondName =
//        gender =
//        email =
//        dataBirtday =
//        iconUser =
    }
    init() {
        
    }
    
}
