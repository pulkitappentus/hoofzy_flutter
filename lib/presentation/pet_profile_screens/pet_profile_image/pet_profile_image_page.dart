import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../infrastructure/base/base_view.dart';
import '../../../infrastructure/navigation/routes.dart';
import '../../hoofzy/view/knowledge_book_list_view.dart';
import 'controllers/pet_profile_image_controller.dart';

class PetProfileImagePage extends BaseView<PetProfileImageController> {

  @override
  Widget body(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,//404717
          children: [
            AppBar(
              toolbarHeight: 56,
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              title: Text('Create a Pet Profile',style: headlineBlack20,),
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget>[

                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 28.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Pet Photo', style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15.0,right: 16.0),
                    child: Align(alignment: Alignment.topLeft,
                        child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy sadipscing elitr, sed diam', style: textBlackMedium14,)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: offWhiteGrey,width: 1)
                      ),
                      child: Column(mainAxisAlignment:MainAxisAlignment.center,children: [Image.asset('assets/hoofzy/profile_placeholder.png',width: 60,height: 60,fit: BoxFit.fill,),],)
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,top: 15.0,right: 16.0),
                    child: Align(alignment: Alignment.center,
                        child: Text('Upload pet photo', style: textBlackMedium14,)),
                  ),
                  const Padding(
                    padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 20),
                    child: Divider(
                      color: offWhiteGrey,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:16.0,right:16.0,top: 20.0),
                    child: InkWell(
                      onTap: (){
                        Get.toNamed(Routes.petAvatar);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget> [
                          const Text('Choose an avatar', style: textBlackMedium16,),
                          Row(children: const [
                            Text('See all', style: textBlackMedium14,),
                            Padding(
                              padding: EdgeInsets.only(left: 10.0),
                              child: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 18,),
                            )
                          ],),

                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          //color: Color(knowledgeList!.cc),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: avtarBackground,
                                    shape: BoxShape.circle,
                                    //border: Border.all(color: Colors.grey,width: 0.3)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: ClipRRect(
                                      child: Image.asset('assets/hoofzy/dog.png',width: 40,height: 44,fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //color: Color(knowledgeList!.cc),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: avtarBackground,
                                    shape: BoxShape.circle,
                                    //border: Border.all(color: Colors.grey,width: 0.3)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: ClipRRect(
                                      child: Image.asset('assets/hoofzy/dog.png',width: 40,height: 44,fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //color: Color(knowledgeList!.cc),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: avtarBackground,
                                    shape: BoxShape.circle,
                                    //border: Border.all(color: Colors.grey,width: 0.3)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: ClipRRect(
                                      child: Image.asset('assets/hoofzy/dog.png',width: 40,height: 44,fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          //color: Color(knowledgeList!.cc),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: avtarBackground,
                                    shape: BoxShape.circle,
                                    //border: Border.all(color: Colors.grey,width: 0.3)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(18.0),
                                    child: ClipRRect(
                                      child: Image.asset('assets/hoofzy/dog.png',width: 40,height: 44,fit: BoxFit.cover,),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 118.0,left: 38.0,right: 38.0),
                    child: Container(
                        height: 56,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: greyColor
                        ),
                        child: Align(alignment: Alignment.center,
                            child:TextButton
                              (
                              onPressed: (){
                              },
                              child: Text('Save & Continue',style: textWhiteMedium15,),)
                        )
                    ),
                  ),



                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}





