//
//  String+Localizable.swift
//  MyGames
//
//  Created by Jadië Oliveira on 08/10/23.
//

import UIKit

extension String {
    init(localizedKey: String) {
        let initText = NSLocalizedString(localizedKey, comment: "")
        self.init(initText)
    }
}
