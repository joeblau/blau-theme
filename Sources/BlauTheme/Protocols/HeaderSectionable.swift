//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Foundation

public protocol HeaderSectionable: Sectionable {
    var callToActionImageLink: ImageLink? { get set }
    var image: AppearnaceURL? { get set }
    var backgroundImage: URL?  { get set }
}
