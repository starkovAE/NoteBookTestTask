//
//  UserDataRealm.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 29.06.2022.
//

import Foundation
import RealmSwift

class UserDataRealm: Object {
    @Persisted var userFirstName: String = "Unknow"
    @Persisted var userSecondName: String = "Unknow"
    @Persisted var gender: String = ""
    @Persisted var email: String = "Unknow"
    @Persisted var dataBirthday = "Unknow"
    @Persisted var age: String = ""
    @Persisted var iconUser: String = ""
    @Persisted var userPhoto: String = ""
    @Persisted var time: String = ""
    @Persisted var timeZone: String = ""
    
    
    override init() {
        super.init()
    }
  required init? (data: User) {
        userFirstName = data.userFirstName
        userSecondName = data.userSecondName
        gender = data.gender
        email = data.email
        dataBirthday = data.date
        iconUser = data.iconUser
        age = data.ageString
        userPhoto = data.userPhoto
        time = data.time
        timeZone = data.timeZone
    }

}
