//
//  ViewController.swift
//  Coordinatable
//
//  Created by Atsushi Miyake on 2018/03/02.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import UIKit

final class MainViewController: UIViewController, Coordinatable {
    
    @IBOutlet private weak var label: UILabel!
    
    typealias Configurator = MainConfigurator
    typealias Dependency   = String
    
    private var string: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    func inject(dependency: String) {
        self.string = dependency
    }
    
    func setup() {
        self.label.text = self.string
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

