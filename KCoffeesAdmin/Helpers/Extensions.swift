//
//  Extensions.swift
//  KCoffeesAdmin
//
//  Created by mohammed sani hassan on 03/01/2021.
//

import Foundation

extension Double {
    var clean: String {
        return self.truncatingRemainder(dividingBy: 1) == 0 ? String(format: "%.0f", self) : String(self)
    }
}

