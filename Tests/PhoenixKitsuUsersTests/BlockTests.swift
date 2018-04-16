import XCTest
@testable import PhoenixKitsuUsers

class BlockTests: XCTestCase {
  let decoder = JSONDecoder()

  let fullyFilledJSON: [String: Any] = [
    "id": "4",
    "type": "blocks",
    "links": [
      "self": "https://kitsu.io/api/edge/blocks/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z"
    ]
  ]

  let validMissingDataJSON: [String: Any] = [
    "id": "4",
    "type": "blocks",
    "links": [
      "self": "https://kitsu.io/api/edge/blocks/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z"
    ]
  ]

  let validNilDataJSON: [String: Any?] = [
    "id": "4",
    "type": "blocks",
    "links": [
      "self": "https://kitsu.io/api/edge/blocks/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": "2017-08-08T12:39:19.217Z"
    ]
  ]

  let invalidMissingDataJSON: [String: Any] = [
    "id": "4",
    "type": "blocks",
    "links": [
      "self": "https://kitsu.io/api/edge/blocks/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z"
    ]
  ]

  let invalidNilDataJSON: [String: Any?] = [
    "id": "4",
    "type": "blocks",
    "links": [
      "self": "https://kitsu.io/api/edge/blocks/4"
    ],
    "attributes": [
      "createdAt": "2017-08-08T12:39:19.217Z",
      "updatedAt": nil
    ]
  ]

  var block: Block?
  var blockAttributes: BlockAttributes?

  override func tearDown() {
    block = nil
    blockAttributes = nil

    super.tearDown()
  }

  func testBlockFullyFilled() {
    let json = fullyFilledJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      block = try? decoder.decode(Block.self, from: data!)
    } else {
      block = nil
    }
    blockAttributes = block?.attributes

    XCTAssertNotNil(block)

    XCTAssertEqual(block?.objectID, "4")
    XCTAssertEqual(block?.type, "blocks")

    XCTAssertNotNil(blockAttributes)

    XCTAssertEqual(blockAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(blockAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
  }

  func testBlockValidMissingData() {
    let json = validMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      block = try? decoder.decode(Block.self, from: data!)
    } else {
      block = nil
    }
    blockAttributes = block?.attributes

    XCTAssertNotNil(block)

    XCTAssertEqual(block?.objectID, "4")
    XCTAssertEqual(block?.type, "blocks")

    XCTAssertNotNil(blockAttributes)

    XCTAssertEqual(blockAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(blockAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
  }

  func testBlockValidNilData() {
    let json = validNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      block = try? decoder.decode(Block.self, from: data!)
    } else {
      block = nil
    }
    blockAttributes = block?.attributes

    XCTAssertNotNil(block)

    XCTAssertEqual(block?.objectID, "4")
    XCTAssertEqual(block?.type, "blocks")

    XCTAssertNotNil(blockAttributes)

    XCTAssertEqual(blockAttributes?.createdAt, "2017-08-08T12:39:19.217Z")
    XCTAssertEqual(blockAttributes?.updatedAt, "2017-08-08T12:39:19.217Z")
  }

  func testBlockInvalidMissingData() {
    let json = invalidMissingDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      block = try? decoder.decode(Block.self, from: data!)
    } else {
      block = nil
    }
    blockAttributes = block?.attributes

    XCTAssertNotNil(block)

    XCTAssertEqual(block?.objectID, "4")
    XCTAssertEqual(block?.type, "blocks")

    XCTAssertNil(blockAttributes)
  }

  func testBlockInvalidNilData() {
    let json = invalidNilDataJSON

    if JSONSerialization.isValidJSONObject(json as Any) {
      let data = try? JSONSerialization.data(withJSONObject: json as Any)
      block = try? decoder.decode(Block.self, from: data!)
    } else {
      block = nil
    }
    blockAttributes = block?.attributes

    XCTAssertNotNil(block)

    XCTAssertEqual(block?.objectID, "4")
    XCTAssertEqual(block?.type, "blocks")

    XCTAssertNil(blockAttributes)
  }
}
