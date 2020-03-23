//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Foundation

public protocol FeatureSectionable: Sectionable {
    var list: [BulletPointable] { get set }
}
