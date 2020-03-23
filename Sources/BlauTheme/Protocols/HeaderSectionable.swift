//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Foundation

public protocol HeaderSectionable: Sectionable {
    var callToActionImageLink: ImageLinkable? { get set }
    var image: AppearanceURLable? { get set }
    var backgroundImage: URL?  { get set }
}
