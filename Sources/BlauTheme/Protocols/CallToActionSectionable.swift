// CallToActionSectionable.swift
// Copyright (c) 2020 Joe Blau

import Foundation

public protocol CallToActionSectionable: Sectionable {
    var callToActionImageLink: ImageLinkable? { get set }
}
