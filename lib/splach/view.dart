import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:task_flutter_1_iti/screen/firstscreen/view.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsetsGeometry.directional(start: 20, end: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Jello(
                duration: Duration(seconds: 3),

                child: FadeInLeftBig(
                  duration: Duration(seconds: 3),
                  child: ElasticInUp(
                    duration: Duration(seconds: 4),

                    child: Container(
                      padding: EdgeInsetsGeometry.directional(
                        start: 20,
                        end: 20,
                      ),
                      width: double.infinity,
                      height: 400,
                      alignment: AlignmentDirectional.center,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red,
                            offset: Offset(5, -5),
                            blurRadius: 5,
                          ),
                          BoxShadow(
                            color: Colors.green,
                            offset: Offset(-5, 5),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(25),
                        ),
                        color: Colors.grey,

                        image: DecorationImage(
                          image: AssetImage("images/img_1.png"),

                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),

              Text(
                "Hello Eng. Ibrahim",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                      offset: Offset(3, -1),
                      color: Colors.green,
                      blurRadius: 3,
                      spreadRadius: 5

                    ),
                  ],
                ),
              ),
              Spacer(flex: 2,),
              
              MaterialButton(onPressed: (){
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (route) => FirstScreen(),), (route) => false,);
              },color: Colors.blueAccent,padding: EdgeInsetsGeometry.directional(top: 10,bottom: 10,start: 20,end: 20),shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.all(Radius.circular(15))),child: Text("Please, Click to Move to Tasks",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),),
              Spacer(flex: 2,)
            ],
          ),
        ),
      ),
    );
  }
}
