//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    static func header<T: BlauThemable>(for site: T) -> Node {
        guard let hero = site.hero else {
            return .empty
        }
        return header(
            .unwrap(hero.title) {
                .h1(.text($0))
            },
            .unwrap(hero.subtitle) {
                .h3(.text($0))
            },
            .unwrap(hero.callToActionImageLink, {
                appleStoreLink(for: $0)
            }),
            .unwrap(hero.image, {
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
            })
        )
    }
}
