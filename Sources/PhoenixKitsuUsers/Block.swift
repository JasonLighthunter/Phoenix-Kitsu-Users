import PhoenixKitsuCore
import Requestable

public class Block: KitsuObject<BlockAttributes>, Requestable {
  public static var requestURLString = "blocks"
}

public class BlockAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
}
