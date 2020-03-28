//
//  Company.swift
//  Lesson_12
//
//  Created by Vova Kutsanov on 27.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import Foundation

struct SelectItem: Codable {
    let id: Int
    let title: String
}

struct Company: Codable {
    let id: Int?
    let inn: String?
    let name: String?
    let nameShort: String?
    let seoUrl: String?
    let txt: String?
    let cityId: Int?
    let tarifId: Int?
    let addStreet: String?
    let addNum: String?
    let addOffice: String?
    let phone: String?
    let email: String?
    let active: Int?
    let logoPath: String?
    let siteName: String?
    let typeProduct: [SelectItem]?
    let activity: [SelectItem]?
    
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case inn
        case name
        case nameShort = "name_short"
        case seoUrl = "seo_url"
        case txt
        case cityId = "city_id"
        case tarifId = "tarif_id"
        case addStreet = "add_street"
        case addNum = "add_num"
        case addOffice = "add_office"
        case phone
        case email
        case active
        case logoPath = "logo_path"
        case siteName = "site_name"
        case typeProduct = "type_product"
        case activity
    }
}


