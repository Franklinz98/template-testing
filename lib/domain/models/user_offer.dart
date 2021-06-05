class UserOffer {
  final String name, content, id;
  final Uri profileUrl;

  UserOffer(this.name, this.content, this.id, String url)
      : profileUrl = Uri.parse(url);
}
