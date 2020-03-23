//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Publish
import Plot

extension Node where Context == HTML.BodyContext {
    static func features<T: BlauThemable>(for site: T) -> Node {
        guard let features = site.features else {
            return .empty
        }
        return .section(
            .unwrap(features.title) {
                .h3(.text($0))
            },
            .unwrap(features.subtitle) {
                .h5(.text($0))
            },
            .div(
                .class("three-wide"),
                .forEach(features.list, { (item: BulletPointable) -> Node<HTML.BodyContext> in
                    .div(
                        .h3(
                            .unwrap(item.symbol) {
                                .span(.class("icon"), .text($0))
                            },
                            .br(),
                            .unwrap(item.title) {
                                .element(named: "small", text: $0)
                            }
                        ),
                        .unwrap(item.description) {
                            .p(.text($0))
                        },
                        .unwrap(item.url) {
                            .a(
                                .href($0.absoluteString),
                                .text("Learn More "),
                                .span(.class("icon"), .text("􀄯"))
                            )
                        }
                    )
                })
            )
        )
    }
}
