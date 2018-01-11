import PhoenixKitsuCore
import Requestable

public class ProfileLink: KitsuObject<ProfileLinkAttributes>, Requestable {
  public static var requestURLString = "profile-links"
}

public class ProfileLinkAttributes: KitsuObjectAttributes {
  public let createdAt: String?
  public let updatedAt: String?
  public let url: String
}
