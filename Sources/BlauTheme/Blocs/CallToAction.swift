// CallToAction.swift
// Copyright (c) 2020 Joe Blau

import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func callToAction<T: BlauThemable>(for site: T) -> Node {
        guard let callToAction = site.callToAction else {
            return .empty
        }
        return .section(
            .unwrap(callToAction.title) {
                .h3(.text($0))
            },
            .unwrap(callToAction.subtitle) {
                .h5(.text($0))
            },
            .unwrap(callToAction.callToActionImageLink) {
                appleStoreLink(for: $0)
            }
        )
    }
}
