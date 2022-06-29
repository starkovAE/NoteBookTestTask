//
//  NetworkDataFetch.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 29.06.2022.
//

import Foundation

//class NetworkDataFetch {
//    
//    static let shared =  NetworkDataFetch()
//    private init () {}
//    
//    func fetchUserData(responce: @escaping (Welcome?, Error?) -> Void) {
//        
//        NetworkRequest.shared.requestData { result in
//            switch result {
//            case .success(let data):
//                do {
//                    let userData = try JSONDecoder().decode(Welcome.self, from: data)
//                    responce(Welcome?, nil)
//                } catch let jsonError {
//                    print("Failed to decode JSON", jsonError)
//                }
//            case.failure(let error) :
//                print("Error \(error.localizedDescription)")
//                responce(nil, error)
//                
//            }
//        }
//        
//    }
//    
//}
