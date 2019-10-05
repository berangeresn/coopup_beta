
class CooperatorListData {

  String firstname;
  String lastname;
  String activity;
  String city;
  String imagePath;

  CooperatorListData( {
      this.firstname = '', this.lastname = '', this.activity = '', this.city = '',
      this.imagePath = '' });

  List<CooperatorListData> cooperatorList = [
    CooperatorListData(
      lastname: "Dupont",
      firstname: "Jean",
      city: "Le Mans",
      activity: "Coach sportif",
      imagePath: 'images/homme01.jpg'
    ),
    CooperatorListData(
        lastname: "Forestier",
        firstname: "Fanny",
        city: "Paris",
        activity: "Esthéticienne",
        imagePath: 'images/femme01.jpg'
    ),
    CooperatorListData(
        lastname: "Williams",
        firstname: "Charly",
        city: "Le Mans",
        activity: "Développeur web",
        imagePath: 'images/homme02.jpg'
    ),
  ];

}

