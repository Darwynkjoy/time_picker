import 'package:flutter/material.dart';

class TimepickerExample extends StatefulWidget{
  const TimepickerExample ({super.key});
  @override
  State<TimepickerExample> createState()=> _timepickerState();
}

class _timepickerState extends State<TimepickerExample>{
  late TimeOfDay selectedtime=TimeOfDay.now();

  Future<void> _selectedTime(BuildContext context)async{
    final TimeOfDay? picked=
    await showTimePicker(context: context, initialTime: selectedtime);
    if(picked != null && picked != selectedtime){
      setState(() {
        selectedtime=picked;
      });
    }
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
            Text("Time selected:${selectedtime.format(context)}"),
            ElevatedButton(onPressed: (){
              _selectedTime(context);
            }, child: Text("Select date")),
          ],
        ),
      ),
    );
  }
}