//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Foundation

public protocol FooterSectionable: Sectionable {
    var navigationLinks: [TextLink] { get set }
    var copyright: String { get set }
}
