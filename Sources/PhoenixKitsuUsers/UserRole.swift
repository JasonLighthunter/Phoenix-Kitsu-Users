import PhoenixKitsuCore
import Requestable

public class UserRole: KitsuObject<UserRoleAttributes>, Requestable {
  public static var requestURLString = "user-roles"
}

public class UserRoleAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
}
