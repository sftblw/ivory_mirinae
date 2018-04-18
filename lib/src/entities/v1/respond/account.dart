class Account {
    final String   id;              /// The ID of the account
    final String   username;        /// The username of the account
    final String   acct;            /// Equals username for local users, includes @domain for remote ones
    final String   display_name;    /// The account's display name
    final bool     locked;          /// Boolean for when the account cannot be followed without waiting for approval first
    final DateTime created_at;      /// The time the account was created
    final int      followers_count; /// The number of followers for the account
    final int      following_count; /// The number of accounts the given account is following
    final int      statuses_count;  /// The number of statuses the account has made
    final String   note;            /// Biography of user
    final Uri      url;             /// URL of the user's profile page (can be remote)
    final Uri      avatar;          /// URL to the avatar image
    final Uri      avatar_static;   /// URL to the avatar static image (gif)
    final Uri      header;          /// URL to the header image
    final Uri      header_static;   /// URL to the header static image (gif)
          bool     moved;           /// If the owner decided to switch accounts, new account is in this attribute
}