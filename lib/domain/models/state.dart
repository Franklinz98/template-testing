class UserState {
  final String name, content, id;
  final Uri profileUrl;

  UserState(this.name, this.content, this.id, String url)
      : profileUrl = Uri.parse(url);
}
