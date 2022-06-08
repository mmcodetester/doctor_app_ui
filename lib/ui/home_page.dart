import 'package:doctor_app_ui/model/header_doctor.dart';
import 'package:doctor_app_ui/ui/doctor/category_list.dart';
import 'package:doctor_app_ui/ui/doctor/top_doctors.dart';
import 'package:flutter/material.dart';

import 'doctor/doctor_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.segment_outlined,
              color: Colors.black,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_outlined,
                color: Colors.black,
              ))
        ],
        backgroundColor: const Color(0xFFffffff),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
              child: Text("Find Your \nMedical Solutions",
                  style: TextStyle(fontSize: 20, color: Color(0xFF009688))),
            ),
            const SizedBox(
              height: 20,
            ),
            _doctorHeader(),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
              child: Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            const CategroySection(),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
              child: Text(
                "Top Doctors",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ),
            const TopDoctorSection(),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }

  SizedBox _doctorHeader() {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: hDoctorList.length,
          itemBuilder: ((context, index) {
            var item = hDoctorList[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DoctorDetails(
                              doctor: item,
                            )));
              },
              child: Container(
                width: 290,
                height: 199,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: const Color(0xFF009688),
                  borderRadius: BorderRadius.circular(20),
                ),
                margin: const EdgeInsetsDirectional.fromSTEB(20, 3, 10, 0),
                child: Stack(
                  textDirection: TextDirection.ltr,
                  children: [
                    Positioned(
                      top: 16,
                      right: 0,
                      child: SizedBox(
                        width: 230,
                        height: 250,
                        child: Image(
                          image: AssetImage(item.image!),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 40,
                        left: 15,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Dr.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              item.firstname!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              item.lastname!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top: 5),
                              child: Text(
                                item.specialist!,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            );
          })),
    );
  }
}
