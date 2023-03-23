//
//  Photo.swift
//  UnsplashDemo
//
//  Created by Bennett Lee on 3/22/23.
//

import Foundation

struct PhotoURL : Codable {
    let raw: String
    let full: String
    let regular: String
}

struct Photo : Codable {
    let id: String
    let urls: PhotoURL
}
