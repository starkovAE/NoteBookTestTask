//
//  NetworkUserManager.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 29.06.2022.
//

//import Foundation
//class NetworkRequest {
//
//    static let shared = NetworkRequest()
//    private init() {}
//
//    func requestData(completion: @escaping (Result<Data, Error>) -> Void) {
////        let keyApi = "KLNF-LE6C-7S8Q-KT5G"
//        let urlString = "https://randomuser.me/api"
//        guard let url = URL(string: urlString) else { return }
//
//        URLSession.shared.dataTask(with: url) { data, responce, error in //дата, ответ, ошибки
//            DispatchQueue.main.async {
//                if let error = error {
//                    completion(.failure(error))
//                    return
//                }
//                guard let data = data else { return }
//                completion(.success(data))
//                print(data)
//            }
//        }
//        .resume()
//    }
//}
