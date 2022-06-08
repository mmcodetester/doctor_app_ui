import 'package:doctor_app_ui/ui/ambulance/ambulance_home.dart';
import 'package:doctor_app_ui/ui/doctor/specialist/heart_special_list.dart';
import 'package:flutter/material.dart';

class CategroySection extends StatelessWidget {
  const CategroySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HeartSpecialList()));
            },
            child: Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.greenAccent.withOpacity(0.3)),
              height: 120,
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.medical_information_sharp, size: 40),
                  Text("Heart"),
                  Text(
                    "Specialist",
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                color: Colors.greenAccent.withOpacity(0.3)),
            height: 120,
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.visibility_outlined, size: 40),
                Text("Eye"),
                Text("Specialist",
                    style: TextStyle(color: Colors.grey, fontSize: 13))
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AmbulanceHome()));
            },
            child: Container(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  color: Colors.greenAccent.withOpacity(0.3)),
              height: 120,
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.airport_shuttle_outlined, size: 40),
                  Text("Ambulance"),
                  Text("Services",
                      style: TextStyle(color: Colors.grey, fontSize: 13))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
