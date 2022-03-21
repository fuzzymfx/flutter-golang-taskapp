import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';
import 'package:flutter_golang_yt/widgets/button_widget.dart';
import 'package:flutter_golang_yt/widgets/textfield_widget.dart';
import 'package:get/get.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController detailController = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
        "assets/addtask1.jpg"
            )
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 50,),
                IconButton(onPressed: (){},
                    icon: InkWell(
                      onTap: (){
                       Get.back();
                      },
                        child: const Icon(Icons.arrow_back)),
                    color: AppColors.secondaryColor
                )

              ],
            ),
            Column(
              children: [
                TextFieldWidget(textController: nameController,
                hintText: "Task Name",
                borderRadius: 30,),
                const SizedBox(height: 18,),
                TextFieldWidget(textController: detailController,
                  hintText: "Task Details",
                  borderRadius: 15, maxLines: 3,),
                const SizedBox(height: 24,),
                ButtonWidget(backgroundcolor: AppColors.mainColor, text: "Add", textColor: Colors.white)


              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/20,
            ),
          ],
        ),
      ),

    );
  }
}
