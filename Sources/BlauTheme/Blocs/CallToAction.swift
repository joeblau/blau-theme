//
//  File.swift
//  
//
//  Created by Joe Blau on 3/22/20.
//

import Publish
import Plot

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
