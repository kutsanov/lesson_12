//
//  ViewController.swift
//  Lesson_12
//
//  Created by Vova Kutsanov on 27.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let model = CompanySearch()
        let companyes: () = model.loadData()
        print("Вывод из контроллера - \(companyes)")
    }
}
