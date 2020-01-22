// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "AlamofireObjectMapper", targets: ["AlamofireObjectMapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "4.8.2"))
    ],
    targets: [
        .target(
            name: "AlamofireObjectMapper",
            dependencies: ["Alamofire"],
            path: "AlamofireObjectMapper"
        ),
    ]
)