// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation


//MARK: CATEGORY ENUM
public enum Category: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case romance
  case adventure
  case comedy
  case horror
  case technology
  case travel
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ROMANCE": self = .romance
      case "ADVENTURE": self = .adventure
      case "COMEDY": self = .comedy
      case "HORROR": self = .horror
      case "TECHNOLOGY": self = .technology
      case "TRAVEL": self = .travel
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .romance: return "ROMANCE"
      case .adventure: return "ADVENTURE"
      case .comedy: return "COMEDY"
      case .horror: return "HORROR"
      case .technology: return "TECHNOLOGY"
      case .travel: return "TRAVEL"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: Category, rhs: Category) -> Bool {
    switch (lhs, rhs) {
      case (.romance, .romance): return true
      case (.adventure, .adventure): return true
      case (.comedy, .comedy): return true
      case (.horror, .horror): return true
      case (.technology, .technology): return true
      case (.travel, .travel): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [Category] {
    return [
      .romance,
      .adventure,
      .comedy,
      .horror,
      .technology,
      .travel,
    ]
  }
}

//MARK: ALLBOOKS QUERY
public final class AllBooksQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query AllBooks {
      allBooks {
        __typename
        id
        name
        author {
          __typename
          name
        }
        cover
      }
    }
    """

  public let operationName: String = "AllBooks"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allBooks", type: .nonNull(.list(.nonNull(.object(AllBook.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allBooks: [AllBook]) {
      self.init(unsafeResultMap: ["__typename": "Query", "allBooks": allBooks.map { (value: AllBook) -> ResultMap in value.resultMap }])
    }

    public var allBooks: [AllBook] {
      get {
        return (resultMap["allBooks"] as! [ResultMap]).map { (value: ResultMap) -> AllBook in AllBook(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: AllBook) -> ResultMap in value.resultMap }, forKey: "allBooks")
      }
    }

    public struct AllBook: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Book"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.object(Author.selections))),
          GraphQLField("cover", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String, author: Author, cover: String) {
        self.init(unsafeResultMap: ["__typename": "Book", "id": id, "name": name, "author": author.resultMap, "cover": cover])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var author: Author {
        get {
          return Author(unsafeResultMap: resultMap["author"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "author")
        }
      }

      public var cover: String {
        get {
          return resultMap["cover"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "cover")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Author"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String) {
          self.init(unsafeResultMap: ["__typename": "Author", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

//MARK: BOOKDESCRIPTION QUERY
public final class BookDescriptionQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query BookDescription($id: ID!) {
      book(id: $id) {
        __typename
        id
        name
        author {
          __typename
          name
        }
        cover
        description
        isFavorite
      }
    }
    """

  public let operationName: String = "BookDescription"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("book", arguments: ["id": GraphQLVariable("id")], type: .nonNull(.object(Book.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(book: Book) {
      self.init(unsafeResultMap: ["__typename": "Query", "book": book.resultMap])
    }

    public var book: Book {
      get {
        return Book(unsafeResultMap: resultMap["book"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "book")
      }
    }

    public struct Book: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Book"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.object(Author.selections))),
          GraphQLField("cover", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("isFavorite", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String, author: Author, cover: String, description: String, isFavorite: Bool) {
        self.init(unsafeResultMap: ["__typename": "Book", "id": id, "name": name, "author": author.resultMap, "cover": cover, "description": description, "isFavorite": isFavorite])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var author: Author {
        get {
          return Author(unsafeResultMap: resultMap["author"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "author")
        }
      }

      public var cover: String {
        get {
          return resultMap["cover"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "cover")
        }
      }

      public var description: String {
        get {
          return resultMap["description"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "description")
        }
      }

      public var isFavorite: Bool {
        get {
          return resultMap["isFavorite"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "isFavorite")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Author"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String) {
          self.init(unsafeResultMap: ["__typename": "Author", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

//MARK: CATEGORIES QUERY
public final class CategoriesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Categories {
      allBooks {
        __typename
        category
      }
    }
    """

  public let operationName: String = "Categories"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("allBooks", type: .nonNull(.list(.nonNull(.object(AllBook.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(allBooks: [AllBook]) {
      self.init(unsafeResultMap: ["__typename": "Query", "allBooks": allBooks.map { (value: AllBook) -> ResultMap in value.resultMap }])
    }

    public var allBooks: [AllBook] {
      get {
        return (resultMap["allBooks"] as! [ResultMap]).map { (value: ResultMap) -> AllBook in AllBook(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: AllBook) -> ResultMap in value.resultMap }, forKey: "allBooks")
      }
    }

    public struct AllBook: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Book"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("category", type: .nonNull(.scalar(Category.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(category: Category) {
        self.init(unsafeResultMap: ["__typename": "Book", "category": category])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var category: Category {
        get {
          return resultMap["category"]! as! Category
        }
        set {
          resultMap.updateValue(newValue, forKey: "category")
        }
      }
    }
  }
}

//MARK: FAVORITEAUTHORS QUERY
public final class FavoriteAuthorsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query FavoriteAuthors {
      favoriteAuthors {
        __typename
        id
        name
        picture
        booksCount
      }
    }
    """

  public let operationName: String = "FavoriteAuthors"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("favoriteAuthors", type: .nonNull(.list(.nonNull(.object(FavoriteAuthor.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(favoriteAuthors: [FavoriteAuthor]) {
      self.init(unsafeResultMap: ["__typename": "Query", "favoriteAuthors": favoriteAuthors.map { (value: FavoriteAuthor) -> ResultMap in value.resultMap }])
    }

    public var favoriteAuthors: [FavoriteAuthor] {
      get {
        return (resultMap["favoriteAuthors"] as! [ResultMap]).map { (value: ResultMap) -> FavoriteAuthor in FavoriteAuthor(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: FavoriteAuthor) -> ResultMap in value.resultMap }, forKey: "favoriteAuthors")
      }
    }

    public struct FavoriteAuthor: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Author"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("picture", type: .nonNull(.scalar(String.self))),
          GraphQLField("booksCount", type: .nonNull(.scalar(Int.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String, picture: String, booksCount: Int) {
        self.init(unsafeResultMap: ["__typename": "Author", "id": id, "name": name, "picture": picture, "booksCount": booksCount])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var picture: String {
        get {
          return resultMap["picture"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "picture")
        }
      }

      public var booksCount: Int {
        get {
          return resultMap["booksCount"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "booksCount")
        }
      }
    }
  }
}

//MARK: FAVORITEBOOKS QUERY
public final class FavoriteBooksQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query FavoriteBooks {
      favoriteBooks {
        __typename
        id
        name
        author {
          __typename
          name
        }
        cover
      }
    }
    """

  public let operationName: String = "FavoriteBooks"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("favoriteBooks", type: .nonNull(.list(.nonNull(.object(FavoriteBook.selections))))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(favoriteBooks: [FavoriteBook]) {
      self.init(unsafeResultMap: ["__typename": "Query", "favoriteBooks": favoriteBooks.map { (value: FavoriteBook) -> ResultMap in value.resultMap }])
    }

    public var favoriteBooks: [FavoriteBook] {
      get {
        return (resultMap["favoriteBooks"] as! [ResultMap]).map { (value: ResultMap) -> FavoriteBook in FavoriteBook(unsafeResultMap: value) }
      }
      set {
        resultMap.updateValue(newValue.map { (value: FavoriteBook) -> ResultMap in value.resultMap }, forKey: "favoriteBooks")
      }
    }

    public struct FavoriteBook: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Book"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
          GraphQLField("author", type: .nonNull(.object(Author.selections))),
          GraphQLField("cover", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, name: String, author: Author, cover: String) {
        self.init(unsafeResultMap: ["__typename": "Book", "id": id, "name": name, "author": author.resultMap, "cover": cover])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var author: Author {
        get {
          return Author(unsafeResultMap: resultMap["author"]! as! ResultMap)
        }
        set {
          resultMap.updateValue(newValue.resultMap, forKey: "author")
        }
      }

      public var cover: String {
        get {
          return resultMap["cover"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "cover")
        }
      }

      public struct Author: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Author"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(name: String) {
          self.init(unsafeResultMap: ["__typename": "Author", "name": name])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var name: String {
          get {
            return resultMap["name"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }
      }
    }
  }
}

//MARK: USERPICTURE QUERY
public final class UserPictureQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query UserPicture {
      userPicture
    }
    """

  public let operationName: String = "UserPicture"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("userPicture", type: .nonNull(.scalar(String.self))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(userPicture: String) {
      self.init(unsafeResultMap: ["__typename": "Query", "userPicture": userPicture])
    }

    public var userPicture: String {
      get {
        return resultMap["userPicture"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "userPicture")
      }
    }
  }
}
