class PostModal {
  final String profilePic;
  final String profileName;
  final String postPic;
  final String likedBy;
  final String otherLIkesCount;
  final String day;
  PostModal(
      {this.profilePic,
      this.profileName,
      this.postPic,
      this.likedBy,
      this.otherLIkesCount,
      this.day});
}

List posts = [
  PostModal(
      profilePic: 'assets/images/storyPic (1).jpg',
      profileName: 'Rahul',
      postPic: 'assets/images/posts (1).jpg',
      likedBy: 'Ashu',
      otherLIkesCount: '276',
      day: '1'),
  PostModal(
      profilePic: 'assets/images/storyPic (2).jpg',
      profileName: 'Sandeep',
      postPic: 'assets/images/posts (2).jpg',
      likedBy: 'Alok',
      otherLIkesCount: '276',
      day: '2'),
  PostModal(
      profilePic: 'assets/images/storyPic (3).jpg',
      profileName: 'Sami',
      postPic: 'assets/images/posts (3).jpg',
      likedBy: 'Kritik',
      otherLIkesCount: '276',
      day: '3'),
  PostModal(
      profilePic: 'assets/images/storyPic (4).jpg',
      profileName: 'Vaibhav',
      postPic: 'assets/images/posts (4).jpg',
      likedBy: 'sami',
      otherLIkesCount: '276',
      day: '4'),
  PostModal(
      profilePic: 'assets/images/storyPic (5).jpg',
      profileName: 'Daud',
      postPic: 'assets/images/posts (5).jpg',
      likedBy: 'Rahul',
      otherLIkesCount: '276',
      day: '5'),
  PostModal(
      profilePic: 'assets/images/storyPic (6).jpg',
      profileName: 'Himanshu',
      postPic: 'assets/images/posts (6).jpg',
      likedBy: 'Ankit',
      otherLIkesCount: '276',
      day: '6'),
  PostModal(
      profilePic: 'assets/images/storyPic (7).jpg',
      profileName: 'Alok',
      postPic: 'assets/images/posts (7).jpg',
      likedBy: 'Ashu',
      otherLIkesCount: '276',
      day: '7'),
  PostModal(
      profilePic: 'assets/images/storyPic (8).jpg',
      profileName: 'Ankit',
      postPic: 'assets/images/posts (8).jpg',
      likedBy: 'Daud',
      otherLIkesCount: '276',
      day: '8'),
  PostModal(
      profilePic: 'assets/images/storyPic (9).jpg',
      profileName: 'Kritik',
      postPic: 'assets/images/posts (9).jpg',
      likedBy: 'Himanshu',
      otherLIkesCount: '276',
      day: '9'),
  PostModal(
      profilePic: 'assets/images/storyPic (10).jpg',
      profileName: 'Ashu',
      postPic: 'assets/images/posts (10).jpg',
      likedBy: 'Vaibhav',
      otherLIkesCount: '276',
      day: '10'),
].toList()
  ..shuffle();
