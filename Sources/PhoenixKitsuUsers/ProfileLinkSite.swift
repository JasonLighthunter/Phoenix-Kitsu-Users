import PhoenixKitsuCore
import Requestable

public class ProfileLinkSite: KitsuObject<ProfileLinkSiteAttributes>, Requestable {
  public static var requestURLString = "profile-link-sites"
}

public class ProfileLinkSiteAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let name: String
}
