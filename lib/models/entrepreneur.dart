class Entrepreneur {
  final String companyName;
  final String ownerName;
  final int contactNumber;
  final String email;
  final String password;
  final String sector;
  final String website;
  final bool startUp;

  Entrepreneur(
      {required this.companyName,
      required this.ownerName,
      required this.contactNumber,
      required this.email,
      required this.password,
      required this.sector,
      required this.website,
      required this.startUp});

  // Convert a Dog into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'company_name': companyName,
      'owner': ownerName,
      'contact': contactNumber,
      'email': email,
      'password': password,
      'sector': sector,
      'website': website,
      'startup_or_potential': startUp,
    };
  }
}
