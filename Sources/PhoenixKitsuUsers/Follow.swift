import PhoenixKitsuCore
import Requestable

public class Follow: KitsuObject<FollowAttributes>, Requestable {
  public static var requestURLString = "follows"
}

public class FollowAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
}
