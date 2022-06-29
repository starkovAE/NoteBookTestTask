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
    @Persisted var gender: Data?
    @Persisted var email: String = "Unknow"
    @Persisted var dataBirthday = "Unknow"
    @Persisted var userImage: Data?
}
