import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CreateProfire extends StatefulWidget {
  const CreateProfire({super.key});

  @override
  State<CreateProfire> createState() => _CreateProfireState();
}

class _CreateProfireState extends State<CreateProfire> {
  TextEditingController nameController =TextEditingController();
  TextEditingController selfIntroductionController =TextEditingController();
  TextEditingController facultyController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.brown,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text('初期登録',style:TextStyle(color: Colors.white),),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 30,),
              Container(
                width: 200,
                height: 60,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(hintText: 'ユーザー名'),
                ),
              ),
              
              Container(
                  width: 200,
                  height: 60,
                  child: TextField(
                    controller: facultyController,
                    decoration: InputDecoration(hintText: '所属学部'),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:5.0),
                child: Container(
                  width: 200,
                  child: TextField(
                    controller: selfIntroductionController,
                    decoration: InputDecoration(hintText: 'プロフィール'),
                    keyboardType: TextInputType.multiline,
                    maxLength:250,
                    maxLines: null,
                  ),
                ),
              ),
              
              SizedBox(height: 50),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary:Colors.brown),
                  onPressed: (){
                    if(nameController.text.isNotEmpty 
                        && selfIntroductionController.text.isNotEmpty
                        && facultyController.text.isNotEmpty){
                      Navigator.pop(context);
                    }
                  }, 
                  child: Text('登録完了',style:TextStyle(color: Colors.white),)
                ),
              ),
          ],),
        ),
      )
    );
  }
}