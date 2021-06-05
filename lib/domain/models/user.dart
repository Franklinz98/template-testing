class User {
  final String name, email;
  final Uri profileUrl;

  User(this.name, this.email, String url)
      : profileUrl = Uri.parse(url);
}