//
//  File.swift
//  
//
//  Created by Joe Blau on 1/11/20.
//

import Foundation
import Publish
import Plot

public struct AppearnaceURL {
    var light: URL
    var dark: URL
}

public struct ImageLink {
    var image: AppearnaceURL
    var url: URL
}

public struct TextLink {
    var text: String
    var link: URL
}

// MARK: - Theme

public protocol BlauThemable: Website {
    var css: String? { get set }
    var keywords: String { get set }
    var copyright: String { get set }
    var hero: HeroSectionable? { get set }
    var header: HeaderSectionable? { get set }
    var callToAction: CallToActionSectionable? { get set }
    var footer: FooterSectionable? { get set }
}
