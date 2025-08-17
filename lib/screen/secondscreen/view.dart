import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(


        alignment: AlignmentDirectional.center,
        child: Column(
          children: [
            SizedBox(height: 15),
            Text(
              "Big Title",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Text(
              "Subtitle with color",
              style: TextStyle(fontSize: 20, color: Colors.deepPurple.shade400),
            ),
            Text(
              "Small grey text",
              style: TextStyle(fontSize: 14, color: Colors.grey.shade500),
            ),
            SizedBox(height: 6),
            Divider(color: Colors.grey.shade400, thickness: 2.56,endIndent: 15,indent: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home, size: 43, color: Colors.blueAccent),
                Icon(Icons.favorite_outlined, size: 43, color: Colors.red),
                Icon(Icons.settings, size: 43, color: Colors.green),
              ],
            ),
            Divider(color: Colors.grey.shade400, thickness: 2.6,endIndent: 15,indent: 15,),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xff009788),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.all(Radius.circular(10)),
                ),
                padding: EdgeInsetsGeometry.directional(
                  top: 13,
                  bottom: 13,
                  start: 20,
                  end: 20,
                ),
              ),
              child: Text("Elevated Button"),
            ),
            SizedBox(height: 8),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: Color(0xff009788), width: 2.5),
                foregroundColor: Color(0xff009788),
              ),
              child: Text("Outlined Button"),
            ),
            TextButton(onPressed: () {}, child: Text("Text Button")),
            SizedBox(height: 17),
            Icon(Icons.thumb_up, color: Colors.blueAccent, size: 30),
            SizedBox(height: 17),
            Divider(color: Colors.grey.shade400, thickness: 2.7,endIndent: 15,indent: 15,),
            Container(padding: EdgeInsetsGeometry.directional(start: 13),
              child: Row(
                children: [
                  Checkbox(
                    activeColor: Colors.grey,
                    value: true,
                    onChanged: (val) {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.all(Radius.circular(5)),
                    ),
                  ),
                  Text("Accept Policy", style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            Container(padding: EdgeInsetsGeometry.directional(start: 13),
              child: Row(

                children: [
                  Checkbox(
                    side: BorderSide(color: Colors.green, width: 2.5),
                    activeColor: Colors.grey,
                    value: false,
                    onChanged: (val) {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.all(Radius.circular(5)),
                    ),
                  ),
                  Text("Subscribe Newsletter", style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            SizedBox(height: 17),
            Container(padding: EdgeInsetsGeometry.directional(start: 13),
              child: Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: 1,
                    onChanged: (val) {},
                    activeColor: Colors.grey,
                  ),
                  Text("Male", style: TextStyle(fontSize: 18)),
                ],
              ),
            ),
            Container(padding: EdgeInsetsGeometry.directional(start: 13),
              child: Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: 2,
                    onChanged: (val) {},
                    activeColor: Colors.grey,
                  ),
                  Text("Female", style: TextStyle(fontSize: 18)),
                ],
              ),
            ),

            SizedBox(height: 20,),
        SizedBox(
          width: 270,
          child: SwitchListTile(value: true, onChanged: (val){},title: Text("Enable Notifications"),activeColor: Colors.grey,thumbColor: WidgetStatePropertyAll(Colors.white),),
        ),
            SizedBox(height: 10,),
            Divider(color: Colors.grey.shade400, thickness: 2.56,endIndent: 15,indent: 15,),



          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Widgets Collection",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
      ),
    );
  }
}
