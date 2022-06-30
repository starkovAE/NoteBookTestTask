//
//  Users.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 30.06.2022.
//

import Foundation
struct User {
    var userFirstName: String = "Имя"
    var userSecondName: String = "Фамилия"
    var gender: String = ""
    var email: String = ""
    var date: String = ""
    var age: Int = 0
    var ageString: String {
        return String(age)
    }
    var iconUser: String = ""
    var userPhoto: String = ""
    var time: String = ""
    var timeZone: String = ""
    
    init?(userModel: UserData) { //Опциональный так как данных может не быть
        userFirstName = userModel.results.first?.name.first ?? ""
        userSecondName = userModel.results.first?.name.last ?? ""
        gender = userModel.results.first?.gender ?? ""
        email =  userModel.results.first?.email ?? ""
        date = userModel.results.first?.dob.date ?? ""
        age = userModel.results.first?.dob.age ?? 0
        iconUser = userModel.results.first?.picture.thumbnail ?? ""
        userPhoto  = userModel.results.first?.picture.large ?? ""
        time = userModel.results.first?.location.timezone.offset ?? ""
        timeZone = userModel.results.first?.location.timezone.timezoneDescription ?? ""
    }
    init() {
        
    }
    
}
