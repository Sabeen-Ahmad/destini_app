import 'dart:io';

import 'package:destini_app/story.dart';
class StoryBrain {
  List<Story> storyData = [ //storyData is a list of Story objects.
    Story(title: 'Your car has blown a tire on a winding road '
        'in the middle of nowhere with no cell phone reception. '
        'You decide to hitchhike. A rusty pickup truck rumbles to a stop '
        'next to you. A man with a wide brimmed hat with soulless eyes opens'
        ' the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(title: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        title: 'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart', choice2: ''),
    Story(
        title: 'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart', choice2: '')
  ];

  String getStory() {
    return storyData [_storyNumber].storyTitle;
  }

  String getChoice1() {
    return storyData[_storyNumber]
        .choice1; // Get the first choice text of the first story
  }

  String getChoice2() {
    return storyData[_storyNumber].choice2;
  }

  int _storyNumber = 0;

//update story number when a choice is made
  void nextStory(int choiceNumber) {
    //TODO: Step 21 - Using the story plan, update nextStory to change the storyNumber depending on the choice made by the user.
    //When user is on story0 and they chose choice1, the story should progress to story2.
    if (choiceNumber == 1 && _storyNumber == 0) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 0) {
      _storyNumber = 1;
    } else if (choiceNumber == 1 && _storyNumber == 1) {
      _storyNumber = 2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }
    //TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

// Restart method to reset the story number
  void restart() {
    _storyNumber = 0; // Reset to the first story
  }
 //TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.
  bool buttonShouldBeVisible() {
    //You could also just check if (_storyNumber < 3)
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
