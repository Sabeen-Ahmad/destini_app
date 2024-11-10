class Story {
  late String storyTitle;
  late String choice1;
  late String choice2;

  Story({
    required String title,
    required String choice1,
    required String choice2,
  })  : storyTitle = title,
        choice1 = choice1,
        choice2 = choice2;
}
