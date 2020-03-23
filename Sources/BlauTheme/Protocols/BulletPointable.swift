// BulletPointable.swift
// Copyright (c) 2020 Joe Blau

import Foundation

public protocol BulletPointable {
    var symbol: String? { get set }
    var tags: [String]? { get set }
    var images: [String]? { get set }
    var title: String? { get set }
    var description: String? { get set }
    var url: URL? { get set }
}
