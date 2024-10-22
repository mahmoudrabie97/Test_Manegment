class ChallengeUiModel {
  final String image;
  final String title;
  final String sutitle;

  ChallengeUiModel(
      {required this.image, required this.title, required this.sutitle});
}

List<ChallengeUiModel> challengelist = [
  ChallengeUiModel(
      image: 'assets/svg/whatsapp.png',
      title: 'ادعو اصدقاءك !',
      sutitle: 'قم بدعوة اصدقاءك للتنافس في التحديات المختلفة'),
  ChallengeUiModel(
      image: 'assets/svg/whats2.png',
      title: ' كون فريق التنافس !',
      sutitle: 'قم بتكوين فريق حتي تستطيع التنافس معهم '),
];
