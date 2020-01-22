// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "AlamofireObjectMapper",
    platforms: [.iOS(.v10)],
    products: [
        .library(name: "AlamofireObjectMapper", targets: ["AlamofireObjectMapper"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "4.8.2")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "3.4.2"))
    ],
    targets: [
        .target(
            name: "AlamofireObjectMapper",
            dependencies: ["Alamofire", "ObjectMapper"],
            path: "AlamofireObjectMapper"
        ),
        .testTarget(
            name: "AlamofireObjectMapperTests",
            dependencies: ["AlamofireObjectMapper"],
            path: "AlamofireObjectMapperTests"
        )
    ]
)