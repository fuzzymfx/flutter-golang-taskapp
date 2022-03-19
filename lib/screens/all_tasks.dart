import 'package:flutter/material.dart';
import 'package:flutter_golang_yt/colors/app_colors.dart';

import '../widgets/task_widget.dart';

class AllTasks extends StatelessWidget {
  const  AllTasks({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List myData =[
      "Try harder",
      "Try Smarter",
    ];
    final leftEditIcon =Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.white,
      padding: const EdgeInsets.only(left: 30),
      child: const Icon(
        Icons.edit,
        color: Colors.black,
      ),
      alignment: Alignment.centerLeft,
    );

    final rightDelIcon =Container(
      margin: const EdgeInsets.only(bottom: 10),
      color: Colors.red,
      padding: const EdgeInsets.only(right: 30),
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
      alignment: Alignment.centerRight,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, top: 50),
            alignment: Alignment.topLeft,
            child: Icon(Icons.arrow_back, color: AppColors.secondaryColor,),

            width: double.maxFinite,
            height: MediaQuery.of(context).size.height/3.2,
  decoration: const BoxDecoration(
  image: DecorationImage(
  fit: BoxFit.cover,
  image: AssetImage(
  'assets/header1.jpg'
  )
  )
  ),
        ),
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              children: [
                Icon(Icons.home, color: AppColors.secondaryColor,),
                const SizedBox(width: 10,),
                Container(
                  child: const Icon(Icons.add, color: Colors.white, size: 20),
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.black
                  ),
               ),
                Expanded(child: Container()),
                Icon(Icons.calendar_month_sharp , color: AppColors.secondaryColor,),
                const SizedBox(width: 10,),
                Text("2", style: TextStyle(
                  fontSize: 20,
                  color: AppColors.secondaryColor,
                ),),
                // Expanded(),

              ],
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: myData.length,
                itemBuilder: (context, index){
              return Dismissible(
                background: leftEditIcon,
                secondaryBackground: rightDelIcon,
                onDismissed: (DismissDirection direction){
                },
                confirmDismiss: (DismissDirection direction)async{
                  if(direction ==DismissDirection.startToEnd){
                  return false;
                  }else{

                    return true;
                  }
                },
                key: ObjectKey(index),
                child: Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Task(
                    text: myData[index], color: Colors.blueGrey,
                ),
                ),
              );
            }),
          )
      ],
      )
    );
  }
}
