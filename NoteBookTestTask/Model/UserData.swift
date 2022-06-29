//
//  UserData.swift
//  NoteBookTestTask
//
//  Created by Александр Старков on 29.06.2022.
//
import Foundation
//MARK: - JSon data

// MARK: - UserData
struct UserData: Decodable {
    let results: [Result]
    let info: Info
}

// MARK: - Info
struct Info: Decodable {
    let seed: String
    let results, page: Int
    let version: String
}

// MARK: - Result
struct Result: Decodable {
    let gender: String //yes
    let name: Name //yes
    let location: Location //no
    let email: String //yes
    let login: Login // no
    let dob, registered: Dob // Yes
    let phone, cell: String //no
    let id: ID // no
    let picture: Picture //yes
    let nat: String //no
}

// MARK: - Dob
struct Dob: Decodable {
    let date: String
    let age: Int
}

// MARK: - ID
struct ID: Decodable {
    let name, value: String
}

// MARK: - Location
struct Location: Decodable {
    let street: Street
    let city, state, country: String
    let postcode: Int
    let coordinates: Coordinates
    let timezone: Timezone
}

// MARK: - Coordinates
struct Coordinates: Decodable {
    let latitude, longitude: String
}

// MARK: - Street
struct Street: Decodable {
    let number: Int
    let name: String
}

// MARK: - Timezone
struct Timezone: Decodable {
    let offset, timezoneDescription: String

    enum CodingKeys: String, CodingKey {
        case offset
        case timezoneDescription = "description"
    }
}

// MARK: - Login
struct Login: Decodable {
    let uuid, username, password, salt: String
    let md5, sha1, sha256: String
}

// MARK: - Name
struct Name: Decodable {
    let title, first, last: String
}

// MARK: - Picture
struct Picture: Decodable {
    let large, medium, thumbnail: String
}
