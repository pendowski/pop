// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "pop",
    platforms: [.iOS(.v12)],
    products: [.library(name: "pop", targets: ["pop"])],
    targets: [
        .target(
            name: "pop",
            path: "pop",
            exclude: ["pop-ios-Info.plist",
                "pop-osx-Info.plist",
                "pop-tvos-Info.plist",
                "POP.h",
                "Swift"],
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("WebCore"),
                .headerSearchPath("./.."),
                .headerSearchPath("include")
            ]
        )
    ],
    cxxLanguageStandard: .cxx11
)
