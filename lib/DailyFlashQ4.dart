import 'package:flutter/material.dart';

class DailyFlashQ4 extends StatefulWidget {
  const DailyFlashQ4({super.key});
  @override
  State<DailyFlashQ4> createState() => _DailyFlashQ4State();
}

class _DailyFlashQ4State extends State<DailyFlashQ4> {
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  final GlobalKey<FormState> _formkey= GlobalKey<FormState>();
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
                  labelText: 'Enter your phone number',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            validator: (value) {
              if(value==null||value.isEmpty){
                return 'Enter phone number';
              }else{
                return null;
              }
            },        
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: emailcontroller,
              decoration: const InputDecoration(
                  labelText: 'Enter email',
                 
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
               validator: (value) {
              if(value==null||value.isEmpty){
                return 'Enter email address';
              }else{
                return null;
              }
            },  
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: () {
             bool validated=_formkey.currentState!.validate();
             if(validated){
              return null;
             }
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    ));
  }
}
