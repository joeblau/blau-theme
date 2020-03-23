//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Foundation

public protocol FooterSectionable: Sectionable {
    var navigationLinks: [TextLinkable] { get set }
    var copyright: String { get set }
}
