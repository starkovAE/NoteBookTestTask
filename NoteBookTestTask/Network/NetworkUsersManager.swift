//
//  NetworkUsersManager.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 30.06.2022.
//

import Foundation
struct NetworkUsersManager {
    //MARK: - fetchUserData() - метод получения данных
    func fetchUserData( completionHandeler: @escaping (Users) -> Void) {
        
        let urlString = "https://randomuser.me/api"
        guard let url = URL(string: urlString) else { return }
    
            let task = URLSession.shared.dataTask(with: url) { data, responce, error in //дата, ответ, ошибки
                DispatchQueue.main.async {
                    if let error = error {
                        print(error.localizedDescription)
                        return }
                  
                    guard let data = data else { return }
                    if let users = self.parceJson(withData: data) {
                        completionHandeler(users)
                    }
                   // print(String(data: data, encoding: .utf8) ?? "")
                    
                }
            }
            task.resume()
 }
    //MARK: - parceJson - раскидыввем данные
    func parceJson(withData data: Data) -> Users? {
        let decoder = JSONDecoder()
        do {
            let userData = try decoder.decode(UserData.self, from: data)
            guard let users = Users(userModel: userData) else  { //если не получилось верни нил
                return nil
            }
            return users
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }
}

