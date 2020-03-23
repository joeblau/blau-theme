// Footer.swift
// Copyright (c) 2020 Joe Blau

import Plot
import Publish

extension Node where Context == HTML.BodyContext {
    static func footer<T: BlauThemable>(for site: T) -> Node {
        guard let footer = site.footer else {
            return .empty
        }
        return .footer(
            .ul(.forEach(footer.navigationLinks) { link in
                .li(.a(.href(link.url.absoluteURL), .text(link.text)))
            }),
            .br(),
            .element(named: "small", text: footer.copyright)
        )
    }
}
