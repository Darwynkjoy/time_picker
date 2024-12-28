import 'package:flutter/material.dart';

class TimepickerExample extends StatefulWidget{
  const TimepickerExample ({super.key});
  @override
  State<TimepickerExample> createState()=> _timepickerState();
}

class _timepickerState extends State<TimepickerExample>{
  late TimeOfDay? selectedTime=TimeOfDay.now();

  Future <void> _selectedtime()async{
    final TimeOfDay? picked=await showTimePicker(context: context, initialTime: selectedTime);
    if
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Timepicker"),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Time selected"),
            ElevatedButton(onPressed: (){
        
            }, child: Text("Select date")),
          ],
        ),
      ),
    );
  }
}