import 'package:flutter/material.dart';

import '../model/knowledge_program_data.dart';

class KnowledgeBookListView extends StatelessWidget {
  const KnowledgeBookListView(
      {Key? key,
        this.knowledgeList,
        this.animationController,
        this.animation,
        this.callback}) : super(key: key);

  final VoidCallback? callback;
  final KnowledgeProgramData? knowledgeList;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController!,
      builder: (BuildContext context, Widget? child) {
        return FadeTransition(
          opacity: animation!,
          child: Transform(
            transform: Matrix4.translationValues(
                0.0, 50 * (1.0 - animation!.value), 0.0),
            child: Container(
              //color: Color(knowledgeList!.cc),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(knowledgeList!.cc),
                        shape: BoxShape.circle,
                        //border: Border.all(color: Colors.grey,width: 0.3)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: ClipRRect(
                            child: Image.asset(knowledgeList!.image,width: 40,height: 44,fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(knowledgeList!.title),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
