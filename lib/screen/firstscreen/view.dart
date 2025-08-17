import 'package:flutter/material.dart';
import 'package:task_flutter_1_iti/screen/secondscreen/view.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return       Scaffold(
      body:
      Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Text(
              "Hello Flutter!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black87,
                shadows: [
                  Shadow(
                    color: Colors.green,
                    offset: Offset(2, 0),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Icon(Icons.star, size: 50, color: Colors.yellow.shade700),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 6,
                shadowColor: Colors.black,
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                ),
              ),
              child: Text("Elevated Button", style: TextStyle(fontSize: 16)),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.deepPurple, width: 2),
                foregroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                ),
              ),
              child: Text("Outlined Button", style: TextStyle(fontSize: 16)),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsetsGeometry.directional(start: 23, end: 23),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                ),
                foregroundColor: Colors.orange,
                backgroundColor: Colors.orange.shade100.withOpacity(0.6),
              ),
              child: Text("Text Button"),
            ),
            SizedBox(height: 15),

            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  activeColor: Colors.grey,
                  value: true,
                  onChanged: (val) {},

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.all(Radius.circular(5.5)),
                  ),
                ),
                Text("Accept Terms",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(value: 1, groupValue: 1, onChanged: (val){}),
                Text("Option A",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Radio(value: 1, groupValue: 2, onChanged: (val){}),
                Text("Option B",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                SizedBox(height: 15,)
              ],
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (route) => SecondScreen(),));
            },style: ElevatedButton.styleFrom(foregroundColor: Colors.white,backgroundColor: Colors.black.withOpacity(0.4)), child: Row( mainAxisSize: MainAxisSize.min,
              children: [
                Text("Click to the Second Task"),
                SizedBox(width: 20,),
                Icon(Icons.arrow_forward,color: Colors.black,),
              ],
            ),)
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Widgets Showcae",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
      ),
    );

  }
}
