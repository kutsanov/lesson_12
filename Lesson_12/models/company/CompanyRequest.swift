//
//  CompanyRequest.swift
//  Lesson_12
//
//  Created by Vova Kutsanov on 27.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import Foundation

struct CompanyRequest: Codable {
    let totalCount: String
    let models: [Company]
    
    enum CodingKeys: String, CodingKey {
        case totalCount
        case models
    }
}
