//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Foundation

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    static func appleStoreLink(for imageLink: ImageLinkable) -> Node {
        return .element(named: "center", nodes: [
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
            )
        ])
    }
}
