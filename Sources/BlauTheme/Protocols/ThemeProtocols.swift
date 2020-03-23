//
//  File.swift
//  
//
//  Created by Joe Blau on 1/11/20.
//

import Foundation
import Publish
import Plot

public protocol AppearanceURLable {
    var light: URL { get set }
    var dark: URL { get set }
}

public protocol ImageLinkable {
    var image: AppearanceURLable { get set }
    var url: URL { get set }
}

public protocol TextLinkable {
    var text: String { get set }
    var url: URL { get set }
}

// MARK: - Theme

public protocol BlauThemable: Website {
    var hero: HeroSectionable? { get set }
    var header: HeaderSectionable? { get set }
    var features: FeatureSectionable? { get set }
    var callToAction: CallToActionSectionable? { get set }
    var footer: FooterSectionable? { get set }
}
