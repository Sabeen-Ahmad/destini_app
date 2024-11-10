import 'package:destini_app/story_brain.dart';
import 'package:flutter/material.dart';
class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  final StoryBrain storyBrain = StoryBrain();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const  BoxDecoration(
          image:  DecorationImage(
              image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 50),
        constraints: BoxConstraints.expand(),
        child:
         SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
Expanded(
    flex:12,
            child: Container(
              child: Center(
                child:
                Text(storyBrain.getStory(),//
                  style: TextStyle(fontSize: 25),),
              ),
            ),
),
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25,right: 25),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(25),

                        ),
                        child: TextButton(
                            onPressed:() {
                             storyBrain.nextStory(1);
                             setState(() {
                               storyBrain.nextStory(1);
                             });
                            },
                            style:TextButton.styleFrom(
                              foregroundColor: Colors.red,
                            ),
                            child: Text(storyBrain.getChoice1(),// Get the first choice from StoryBrain

                              style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),
                ),
               const  SizedBox(height: 20,),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25,right: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(25),

                      ),
                      child: Visibility(
                        visible: storyBrain.buttonShouldBeVisible(),
                        child: TextButton(
                          onPressed:() {
                            storyBrain.nextStory(2);
                            setState(() {
                              storyBrain.nextStory(2);
                            });
                          },
                          style:TextButton.styleFrom(
                            foregroundColor: Colors.blue,
                          ),
                          child: Text(StoryBrain().getChoice2(),
                          style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            )),
      ),
    );


  }
}
