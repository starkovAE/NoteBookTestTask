//
//  RealmManager.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 29.06.2022.
//

import Foundation
import RealmSwift

class RealmManager {
    
    static let shared = RealmManager()
    
    private init() {}
    
    let localRealm = try! Realm()
    
    func saveUserModel(model: UserDataRealm) {
        try! localRealm.write {
            localRealm.add(model)
        }
    }
    
    func deleteUserModel(model: UserDataRealm) {
        try! localRealm.write {
            localRealm.delete(model)
        }
    }
}
