//
//  Post.swift
//  WSCRUD
//
//  Created by Rafael González on 07/10/23.
//

import Foundation

struct Post : Codable {
    let id : Int?
    let title : String
    let body : String
    let userId : Int
}
