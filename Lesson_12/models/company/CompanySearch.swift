//
//  CompanySearch.swift
//  Lesson_12
//
//  Created by Vova Kutsanov on 27.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import Foundation

class CompanySearch {
    var modelsOut: [Company] = []
    
    func loadData() {
        
        guard URL(string: "http://api.moreoptom.ru/v1/company/search") != nil else { return }
        guard let url = URL(string: "http://api.moreoptom.ru/v1/company/search") else { return }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("kklPNkKwHfY345JMKHJFDhdv", forHTTPHeaderField: "x-fawesome-token")

        URLSession.shared.dataTask(with: urlRequest) { (data, _, _) in
            guard let data = data else { return }
            
            let decoder = JSONDecoder()
            do {
                let result = try decoder.decode(CompanyRequest.self, from: data)
                print("Вывод из модели - \(result)")
                self.modelsOut = result.models
            } catch let error {
                print(error)
            }
        }.resume()
    }
}
