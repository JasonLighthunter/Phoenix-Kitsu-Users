import PhoenixKitsuCore
import Requestable

public class User: KitsuObject<UserAttributes>, Requestable {
  public static var requestURLString = "users"
}

public class UserAttributes: KitsuObjectAttributesWithTimestamp {
  public let createdAt: String
  public let updatedAt: String
  public let name: String?
  public let pastNames: [String]
  public let slug: String?
  public let about: String
  public let location: String?
  public let waifuOrHusbando: String?
  public let followersCount: Int
  public let followingCount: Int
  public let lifeSpentOnAnime: Int
  public let birthday: String?
  public let gender: String?
  public let commentsCount: Int
  public let favoritesCount: Int
  public let likesGivenCount: Int
  public let reviewsCount: Int
  public let likesReceivedCount: Int
  public let postsCount: Int
  public let ratingsCount: Int
  public let mediaReactionsCount: Int
  public let proExpiresAt: String?
  public let title: String?
  public let hasCompletedProfile: Bool
  public let hasCompletedFeed: Bool
  public let avatar: Image?
  public let coverImage: Image?
  public let email: String
  public let password: String?
  public let isConfirmed: Bool
  public let previousEmail: String?
  public let language: String?
  public let timeZone: String?
  public let country: String?
  public let allowsSharingToGlobal: Bool
  public let titleLanguagePreference: String
  public let usesSFWFilter: Bool
  public let ratingSystem: RatingSystemEnum
  public let theme: ThemeEnum
  public let facebookID: String?
  public let status: RegistrationStatusEnum
  
  private enum CodingKeys: String, CodingKey {
    case createdAt
    case updatedAt
    case name
    case pastNames
    case slug
    case about
    case location
    case waifuOrHusbando
    case followersCount
    case followingCount
    case lifeSpentOnAnime
    case birthday
    case gender
    case commentsCount
    case favoritesCount
    case likesGivenCount
    case reviewsCount
    case likesReceivedCount
    case postsCount
    case ratingsCount
    case mediaReactionsCount
    case proExpiresAt
    case title
    case hasCompletedProfile = "profileCompleted"
    case hasCompletedFeed = "feedCompleted"
    case avatar
    case coverImage
    case email
    case password
    case isConfirmed = "confirmed"
    case previousEmail
    case language
    case timeZone
    case country
    case allowsSharingToGlobal = "shareToGlobal"
    case titleLanguagePreference
    case usesSFWFilter = "sfwFilter"
    case ratingSystem
    case theme
    case facebookID = "facebookId"
    case status
  }
}
