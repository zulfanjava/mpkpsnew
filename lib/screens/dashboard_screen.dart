import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapplication/screens/Calanderscreen.dart';
import 'package:flutterapplication/screens/PemanduScreen.dart';
import 'package:flutterapplication/screens/SenaraiKenderaan.dart';
import 'package:flutterapplication/screens/SenaraiPemandu.dart';
import 'package:flutterapplication/screens/SenaraiStaff.dart';
import 'package:flutterapplication/screens/StaffScreen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  
  Card makeDashboardItem(String title, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 0.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Color(0xFF00488D),
              Color(0XFFFFFFFF),
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: InkWell(
          onTap: (){
            if(index == 0) {
              //1.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => CarFormScreen()));
            }
            if(index == 1) {
              //2.1 item
              Navigator.push(context, MaterialPageRoute(builder: (context) => SenaraiKenderaanScreen()));
            }
            if(index == 2) {
              //2.1 item
              Navigator.push(context, MaterialPageRoute(builder: (context) => EmployeeFormScreen()));
            }
            if(index == 3) {
              //2.1 item
              Navigator.push(context, MaterialPageRoute(builder: (context) => SenaraiPemanduScreen()));
            }
            if(index == 4) {
              //2.1 item
              Navigator.push(context, MaterialPageRoute(builder: (context) => StaffScreen()));
            }
            if(index == 5) {
              //2.1 item
              Navigator.push(context, MaterialPageRoute(builder: (context) => SenaraiStaffScreen()));
            }
            
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 19,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 193, 232),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Flutter Grid Dashboard",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Items: ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                makeDashboardItem("Daftar Kenderaan", "assets/setting.png",0),
                makeDashboardItem("Senarai Kenderaan", "assets/setting.png",1),
                makeDashboardItem("Daftar Pemandu", "assets/notification.png",2),
                makeDashboardItem("Senarai Pemandu", "assets/notificaion.png",3),
                makeDashboardItem("Daftar Staff", "assets/form.png",4),
                makeDashboardItem("Senarai Staff", "assets/form.png",5),
              ],

            ),
          )
        ],
      ),
    );
  }
}
