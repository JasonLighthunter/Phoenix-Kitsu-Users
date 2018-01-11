import PhoenixKitsuCore
import Requestable

public class Stat: KitsuObject<StatAttributes>, Requestable {
  public static var requestURLString = "stats"
}

public class StatAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let kind: StatKindEnum
  public let statsData: StatData?
}
