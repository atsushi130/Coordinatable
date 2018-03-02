//
//  Coordinatable.swift
//  Coordinatable
//
//  Created by Atsushi Miyake on 2018/03/02.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

// Swift compiler bug
// Cross referense AssociatedTypeDecl
// @see https://bugs.swift.org/browse/SR-6225?page=com.atlassian.jira.plugin.system.issuetabpanels%3Aall-tabpanel

import UIKit

protocol Coordinatable: Injectable, StoryboardInstantiatable where Self: UIViewController {
    associatedtype Configurator: Configuratable
    static func instantiate(with dependency: Dependency) -> Self
}

extension Coordinatable where Self == Configurator.ViewController {
    static func instantiate(with dependency: Dependency) -> Self {
        return Configurator.configure(with: dependency)
    }
}

extension Coordinatable where Self == Configurator.ViewController, Dependency == Void {
    static func instantiate() -> Self {
        return Configurator.configure(with: ())
    }
}

protocol Configuratable {
    associatedtype ViewController: Coordinatable
    static func configure(with dependency: ViewController.Dependency) -> ViewController
}
