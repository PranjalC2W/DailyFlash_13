import 'package:flutter/material.dart';

class DailyFlashQ2 extends StatefulWidget {
  const DailyFlashQ2({super.key});
  @override
  State<DailyFlashQ2> createState() => _DailyFlashQ2State();
}

class _DailyFlashQ2State extends State<DailyFlashQ2> {
  TextEditingController phonecontroller = TextEditingController();
  final GlobalKey<FormState> _formkey= GlobalKey<FormState>();

  // String? validatephone(String? value){
    
  //  if(value!.isEmpty){
  //   return 'Please enter a phone number';
  //  }else if(value.length!=10){
  //   return 'Phone number must be 10 digits long';
  //  }else if(RegExp(r'^(\+|00)?[0-9]+$').hasMatch(value)){
  //   return 'Please enter valid phone number';
  //  }else{
  //   return null;
  //  }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: _formkey,
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(30)),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: phonecontroller,
              decoration: const InputDecoration(
                  labelText: 'Enter phone number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
                 validator:(value) {
                 if(value!.isEmpty){
    return 'Please enter a phone number';
   }else if(value.length!=10){
    return 'Phone number must be 10 digits long';
   }else if(!RegExp(r'^(\+|00)?[0-9]+$').hasMatch(value)){
    return 'Please enter valid phone number';
   }else{
    return null;
   }
                   //validatephone(value);
                                    },
            ),
            
          ),
          const SizedBox(height: 15,),
          ElevatedButton(
            onPressed: () {
             bool validated=_formkey.currentState!.validate();
            
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    ));
  }
}
