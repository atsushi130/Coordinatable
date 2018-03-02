//
//  Configurator.swift
//  Coordinatable
//
//  Created by Atsushi Miyake on 2018/03/02.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import Foundation

struct MainConfigurator: Configuratable {
    
    typealias ViewController = MainViewController
    
    static func configure(with dependency: String) -> MainViewController {
        let mainViewController = MainViewController.instantiate()
        mainViewController.inject(dependency: dependency)
        return mainViewController
    }
}
