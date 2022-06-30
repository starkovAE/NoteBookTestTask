//
//  NetworkUsersManager.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 30.06.2022.
//

import Foundation
struct NetworkUsersManager {
    //MARK: - fetchUserData() - метод получения данных
    func fetchUserData(completionHandeler: @escaping (User) -> Void) {
    
        let urlString = "https://randomuser.me/api"
        guard let url = URL(string: urlString) else { return }
    
            let task = URLSession.shared.dataTask(with: url) { data, responce, error in //дата, ответ, ошибки
                DispatchQueue.main.async {
                    if let error = error {
                        print(error.localizedDescription)
                        return
                        
                    }
                    guard let data = data else { return }
                    if let user = self.parceJson(withData: data) { //если получилось получить user из данных, передаем их в completion
                       completionHandeler(user)
                        print(user)
                    }
                   // print(String(data: data, encoding: .utf8) ?? "")
                    
                }
            }
            task.resume()
        
           
 }
    //MARK: - parceJson - раскидыввем данные (переводим данные из json - модели в нашу модель)
    func parceJson(withData data: Data) -> User? {
        let decoder = JSONDecoder()
        do {
            let userData = try decoder.decode(UserData.self, from: data)
            guard let user = User(userModel: userData) else  { //если не получилось верни нил
                return nil
            }
            return user
        } catch let error as NSError {
            print(error.localizedDescription)
        }
        return nil
    }
}

