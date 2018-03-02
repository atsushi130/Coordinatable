//
//  Injectable.swift
//  Coordinatable
//
//  Created by Atsushi Miyake on 2018/03/02.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import Foundation

protocol Injectable: class {
    associatedtype Dependency
    func inject(dependency: Dependency)
}

extension Injectable where Dependency == Void {
    // Default implementation
    func inject(dependency: Dependency) {}
}
