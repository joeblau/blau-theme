// FooterSectionable.swift
// Copyright (c) 2020 Joe Blau

import Foundation

public protocol FooterSectionable: Sectionable {
    var navigationLinks: [TextLinkable] { get set }
    var copyright: String { get set }
}
