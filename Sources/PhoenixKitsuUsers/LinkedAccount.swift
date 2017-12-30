import PhoenixKitsuCore

public class LinkedAccount: KitsuObject {
  public static var requestURLString = "linked-accounts"
  
  public let objectID: String
  public let type: String
  public let links: Links
  public let attributes: LinkedAccountAttributes?
  
  private enum CodingKeys: String, CodingKey {
    case objectID = "id"
    case type
    case links
    case attributes
  }
}

public class LinkedAccountAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let kind: String
  public let externalUserID: String
  public let token: LinkedAccountToken?
  public let shareTo: Bool
  public let shareFrom: Bool
  public let syncTo: Bool
  public let disabledReason: String?
  
  private enum CodingKeys: String, CodingKey {
    case createdAt
    case updatedAt
    case kind
    case externalUserID = "externalUserId"
    case token
    case shareTo
    case shareFrom
    case syncTo
    case disabledReason
  }
}
