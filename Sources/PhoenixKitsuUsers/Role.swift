import PhoenixKitsuCore
import Requestable

public class Role: KitsuObject<RoleAttributes>, Requestable {
  public static var requestURLString = "roles"
}

public class RoleAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let name: String?
  public let resourceID: String?
  public let resourceType: String?

  private enum CodingKeys: String, CodingKey {
    case createdAt
    case updatedAt
    case name
    case resourceID = "resourceId"
    case resourceType
  }
}
