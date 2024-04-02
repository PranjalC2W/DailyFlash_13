import 'package:flutter/material.dart';

class DailyFlashQ5 extends StatefulWidget {
  const DailyFlashQ5({super.key});
  @override
  State<DailyFlashQ5> createState() => _DailyFlashQ5State();
}

class _DailyFlashQ5State extends State<DailyFlashQ5> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
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
              controller: namecontroller,
              decoration: const InputDecoration(
                  labelText: 'Enter your name',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            validator: (value) {
              if(value==null||value.isEmpty){
                return 'Enter name';
              }else if(value.length>=6||value.length<=20){
                return 'Please enter username character gretter than 8 and less than 20';
              }
            },        
            ),
            
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: passwordcontroller,
              decoration: const InputDecoration(
                  labelText: 'Enter password',
                 
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
               validator: (value) {
              if(value==null||value.isEmpty){
                return 'Enter password';
              }else if(!value.contains(RegExp(r'^[A-Z]'))){
                return 'Password must contain A- Z character';
              }else if(!value.contains(RegExp(r'^[0-9]'))){
                return 'Password must contain 0-9 number';
              }else if(!value.contains(RegExp(r'^[a-z]'))){
                return 'Password must contain  a-z character';
              }else if(value.length>=8||value.length<=20){
                return 'Please enter username character gretter than 8 and less than 20';
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
