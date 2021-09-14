// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CHDF5",
	products: [
		.library(name: "CHDF5", targets: ["CHDF5"])
	],
	targets: [
		.systemLibrary(name: "CHDF5", pkgConfig: "libhdf5",
					   providers: [.brewItem(["hdf5"])])
	]
)
// pkgConfig: "libhdf5",
// Originally expected at "/usr/local/include/*"

// "/usr/local/Cellar/hdf5/1.12.1/include/*"

