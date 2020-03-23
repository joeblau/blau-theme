// AppleStoreLink.swift
// Copyright (c) 2020 Joe Blau

import Foundation

import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func appleStoreLink(for imageLink: ImageLinkable) -> Node {
        .element(named: "center", nodes: [
            .a(
                .href(imageLink.url.absoluteString),
                .picture(
                    .source(
                        .srcset(imageLink.image.dark.path),
                        .attribute(named: "media", value: "(prefers-color-scheme: dark)")
                    ),
                    .img(
                        .src(imageLink.image.light.path)
                    )
                )
            ),
        ])
    }
}
