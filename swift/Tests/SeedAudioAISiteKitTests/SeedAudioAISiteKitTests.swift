import XCTest
@testable import SeedAudioAISiteKit

final class SeedAudioAISiteKitTests: XCTestCase {
    func testMetadata() {
        XCTAssertEqual(SeedAudioAISiteKit.site.name, "Seed Audio AI")
        XCTAssertEqual(SeedAudioAISiteKit.site.homepage, "https://seedaud.io/")
    }

    func testURLs() {
        XCTAssertEqual(SeedAudioAISiteKit.url(), "https://seedaud.io/")
        XCTAssertEqual(SeedAudioAISiteKit.url("/pricing/"), "https://seedaud.io/pricing/")
    }
}
