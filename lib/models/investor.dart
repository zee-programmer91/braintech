class IndividualInvestor {
  final String ownerName;
  final String ownerSurname;
  final String email;
  final int contactNumber;
  final String password;
  final String sector;
  final String website;

  IndividualInvestor(
      {required this.ownerName,
      required this.ownerSurname,
      required this.email,
      required this.contactNumber,
      required this.password,
      required this.sector,
      required this.website});
}

class CompanyInvestor {
  final String companyName;
  final String ownerName;
  final String email;
  final int contactNumber;
  final String password;
  final String sector;
  final String website;

  CompanyInvestor(
      {required this.companyName,
      required this.ownerName,
      required this.email,
      required this.contactNumber,
      required this.password,
      required this.sector,
      required this.website});
}
