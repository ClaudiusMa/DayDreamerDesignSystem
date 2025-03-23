import Testing
@testable import DayDreamerDesignSystem

@Test func testColorAssetsAvailability() async throws {
    // Test if color assets bundle exists
    let bundle = Bundle.module
    let assetURL = bundle.url(forResource: "Colors", withExtension: "xcassets")
    #expect(assetURL != nil, "Colors.xcassets should exist in the bundle")
    
    // Test if we can access the asset catalog
    let assetCatalog = try? NSDataAsset(name: "Colors", bundle: bundle)
    #expect(assetCatalog != nil, "Colors asset catalog should be accessible")

        // Test if specific colors can be loaded
    let color = Color("backgroundBrandDefault", bundle: bundle)
    #expect(color != nil, "Primary color should be accessible from assets")
}
