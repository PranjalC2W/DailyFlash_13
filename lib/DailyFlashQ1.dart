import 'package:flutter/material.dart';

class DailyFlashQ1 extends StatefulWidget {
  const DailyFlashQ1({super.key});
  @override
  State<DailyFlashQ1> createState() => _DailyFlashQ1State();
}

class _DailyFlashQ1State extends State<DailyFlashQ1> {
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
              }else{
                return null;
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
