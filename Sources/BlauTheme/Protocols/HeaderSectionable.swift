// HeaderSectionable.swift
// Copyright (c) 2020 Joe Blau

import Foundation

public protocol HeaderSectionable: Sectionable {
    var callToActionImageLink: ImageLinkable? { get set }
    var image: AppearanceURLable? { get set }
    var backgroundImage: URL? { get set }
}
