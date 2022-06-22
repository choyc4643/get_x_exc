import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx/GetxController.dart';

class StateScreen extends StatefulWidget {
  const StateScreen({Key? key}) : super(key: key);

  @override
  State<StateScreen> createState() => _StateScreenState();
}

class _StateScreenState extends State<StateScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BuilderController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){Get.back();},),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('On Update'),
            GetBuilder<BuilderController>(
              init: BuilderController(),
              builder: (_){
                return Text('count: ${_.count}');
              },
              ),
              ElevatedButton(
                onPressed: (){
                  controller.increment();
                }, 
                child: Text('increment'))
      ],)),
    );
    
  }
}