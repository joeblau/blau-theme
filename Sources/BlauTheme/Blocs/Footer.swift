//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    static func footer<T: BlauThemable>(for site: T) -> Node {
        guard let footer = site.footer else {
            return .empty
        }
        return .footer(
            .a(.href("/"), .text("Home")),
            .forEach(footer.navigationLinks) { link in
                .text(" • ")
//                .a(.href(link.path), .text(link.text))
            },
            .br(),
            .element(named: "small", text: footer.copyright)
        )

    }
}
