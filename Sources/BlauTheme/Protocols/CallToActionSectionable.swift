//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Foundation

public protocol CallToActionSectionable: Sectionable {
    var callToActionImageLink: ImageLink? { get set }
}
