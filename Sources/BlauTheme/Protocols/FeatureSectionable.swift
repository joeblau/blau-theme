// FeatureSectionable.swift
// Copyright (c) 2020 Joe Blau

import Foundation

public protocol FeatureSectionable: Sectionable {
    var list: [BulletPointable] { get set }
}
