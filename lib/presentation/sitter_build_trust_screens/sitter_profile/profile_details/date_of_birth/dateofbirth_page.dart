import 'package:Hoofzy_V2/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_picker_theme.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import '../../../../../infrastructure/core/base/base_view.dart';
import 'controllers/date.of.birth.controller.dart';

class DateofbirthPage extends BaseView<DateOfBirthController> {

  @override
  Widget body(BuildContext context) {
    DateTime _selectedDate;
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Color(0xFFFFFBF6), Color(0xFFFFFFFF)],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
              toolbarHeight: 56,
              backgroundColor: Color(0xFFFFFBF6),
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
            ),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: <Widget> [
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 6),
                    child: Align(alignment: Alignment.topLeft,child: Text('Date of Birth',style: headlineBlack20,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0,top: 15),
                    child: Align(alignment: Alignment.topLeft,child: Text('Age Verification',style: textBlackMedium16,)),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:16,top: 15.0,right: 16),
                    child: Align(alignment:Alignment.topLeft,child: Text('We use this to conduct background checks when signing up to be a sitter.'
                        ' We won’t share or display this on your profile',style: textBlackMedium14,)),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 46.0, right: 46.0),
                    child: DatePickerWidget(
                      looping: false,
                      // default is not looping
                      firstDate: DateTime(1990, 01, 01),
                      lastDate: DateTime(2030, 1, 1),
                      initialDate: DateTime(2023, 01, 16),
                      dateFormat: "MMMM-dd-yyyy",
                      //  locale: DatePicker.localeFromString('en'),
                      onChange: (DateTime newDate, _) => _selectedDate = newDate,
                      pickerTheme: const DateTimePickerTheme(
                        itemTextStyle: TextStyle(color: Colors.black, fontSize: 18),
                        dividerColor: Color(0xFFF5F5F5),
                        backgroundColor: Color(0xFFFFFBF6),

                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 58.0,right: 58.0,top: 90,bottom: 50),
                    child: InkWell(
                      onTap: (){

                      },
                      child: Container(
                          height: 60,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              color: primaryColorSitter
                          ),
                          child: const Align(alignment: Alignment.center,
                              child:Text('Save & Continue',style: textWhiteMedium15,)
                          )
                      ),
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





