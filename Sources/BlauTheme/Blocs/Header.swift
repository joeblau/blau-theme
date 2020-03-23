// Header.swift
// Copyright (c) 2020 Joe Blau

import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func header<T: BlauThemable>(for site: T) -> Node {
        guard let header = site.header else {
            return .empty
        }
        return .header(
            .unwrap(header.title) {
                .h1(.text($0))
            },
            .unwrap(header.subtitle) {
                .h3(.text($0))
            },
            .unwrap(header.callToActionImageLink) {
                appleStoreLink(for: $0)
            },
            .unwrap(header.image) {
                .div(
                    .picture(
                        .source(
                            .srcset($0.dark.path),
                            .attribute(named: "media", value: "(prefers-color-scheme: dark)")
                        ),
                        .img(
                            .src($0.light.path)
                        )
                    )
                )
            }
        )
    }
}
