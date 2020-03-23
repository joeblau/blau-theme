//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Foundation

public protocol BulletPointable {
    var symbol: String? { get set }
    var tags: [String]? { get set }
    var images: [String]? { get set }
    var title: String? { get set }
    var description: String? { get set }
    var url: URL? { get set }
}
