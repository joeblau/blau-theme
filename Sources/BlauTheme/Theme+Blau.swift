// Theme+Blau.swift
// Copyright (c) 2020 Joe Blau

import Plot
import Publish

public enum PublishError: Error {
    case castSiteError
    case notImplemented
}

public extension Theme where Site: BlauThemable {
    static var blau: Self {
        Theme(htmlFactory: StevenPaulJobsHTMLFactory(),
              resourcePaths: [
                  "Resources/BlauTheme/css/blau-styles.css",
                  "Resources/BlauTheme/fonts/sfsymbols-font-stylesheet.css",
                  "Resources/BlauTheme/fonts/SFSymbolsFallback-Regular.eot",
                  "Resources/BlauTheme/fonts/SFSymbolsFallback-Regular.svg",
                  "Resources/BlauTheme/fonts/SFSymbolsFallback-Regular.ttf",
                  "Resources/BlauTheme/fonts/SFSymbolsFallback-Regular.woff",
                  "Resources/BlauTheme/fonts/SFSymbolsFallback-Regular.woff2",
              ])
    }

    internal struct StevenPaulJobsHTMLFactory: HTMLFactory {
        func makeIndexHTML(for index: Index,
                           context: PublishingContext<Site>) throws -> HTML {
            HTML(
                .lang(context.site.language),
                .head(for: index,
                      on: context.site,
                      titleSeparator: " | ",
                      stylesheetPaths: buildStyleSheettPaths(for: context.site),
                      rssFeedPath: .defaultForRSSFeed,
                      rssFeedTitle: nil),
                .body(
                    .header(for: context.site),
                    .main(
                        .features(for: context.site),
                        .callToAction(for: context.site)
                    ),
                    .footer(for: context.site)
                )
            )
        }

        func makeSectionHTML(for _: Section<Site>,
                             context _: PublishingContext<Site>) throws -> HTML {
            HTML()
        }

        func makeItemHTML(for _: Item<Site>,
                          context _: PublishingContext<Site>) throws -> HTML {
            HTML()
        }

        func makePageHTML(for page: Page,
                          context: PublishingContext<Site>) throws -> HTML {
            HTML(
                .lang(context.site.language),
                .head(for: page,
                      on: context.site,
                      titleSeparator: " | ",
                      stylesheetPaths: buildStyleSheettPaths(for: context.site),
                      rssFeedPath: .defaultForRSSFeed,
                      rssFeedTitle: nil),
                .body(
                    .header(
                        .h1(.text(page.title)),
                        .h3(.text(page.description))
                    ),
                    .main(
                        .section(
                            .class("max-section"),
                            page.body.node
                        )
                    ),
                    .footer(for: context.site)
                )
            )
        }

        func makeTagListHTML(for _: TagListPage,
                             context _: PublishingContext<Site>) throws -> HTML? {
            HTML()
        }

        func makeTagDetailsHTML(for _: TagDetailsPage,
                                context _: PublishingContext<Site>) throws -> HTML? {
            HTML()
        }

        func buildStyleSheettPaths<T: BlauThemable>(for _: T) -> [Path] {
            let templateStyleSheets = [
                Path("/blau-styles.css"),
                Path("/sfsymbols-font-stylesheet.css"),
            ]
            return templateStyleSheets
        }
    }
}
