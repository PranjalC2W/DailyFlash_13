import 'package:flutter/material.dart';

class DailyFlashQ3 extends StatefulWidget {
  const DailyFlashQ3({super.key});
  @override
  State<DailyFlashQ3> createState() => _DailyFlashQ3State();
}

class _DailyFlashQ3State extends State<DailyFlashQ3> {
  TextEditingController phonecontroller = TextEditingController();
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
                prefixIcon: Icon(Icons.email),
                  labelText: 'Enter Email Address',
                  border: OutlineInputBorder(
                    
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
                 validator:(value) {
                 if(value!.isEmpty){
    return 'Please enter a Email address';
   }else if(!value.endsWith('@gmail.com')){
    return 'Email must ends with @gmail.com';
   }else if(value.contains(' ')){
    return 'Email must not contains the space ';
   }else{
    return null;
   }
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
