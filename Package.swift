// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Supabase",
  platforms: [
    .iOS(.v13),
    .macCatalyst(.v13),
    .macOS(.v10_15),
    .watchOS(.v6),
    .tvOS(.v13),
  ],
  products: [
    .library(
      name: "Supabase",
      targets: ["Supabase"]
    )
  ],
  dependencies: [
    .package(url: "https://github.com/supabase-community/gotrue-swift", revision: "32719c3487d144a0fd76b9cd7bc5606c1fc720b7"),
    .package(url: "https://github.com/supabase-community/storage-swift.git", from: "0.0.2"),
    .package(url: "https://github.com/supabase-community/realtime-swift.git", from: "0.0.1"),
    .package(url: "https://github.com/supabase-community/postgrest-swift", from: "0.0.6"),
  ],
  targets: [
    .target(
      name: "Supabase",
      dependencies: [
        .product(name: "GoTrue", package: "gotrue-swift"),
        .product(name: "SupabaseStorage", package: "storage-swift"),
        .product(name: "Realtime", package: "realtime-swift"),
        .product(name: "PostgREST", package: "postgrest-swift"),
      ]
    )
  ]
)
