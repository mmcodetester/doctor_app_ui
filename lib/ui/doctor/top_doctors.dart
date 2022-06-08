import 'package:doctor_app_ui/model/header_doctor.dart';
import 'package:flutter/material.dart';

class TopDoctorSection extends StatefulWidget {
  const TopDoctorSection({Key? key}) : super(key: key);

  @override
  State<TopDoctorSection> createState() => _TopDoctorSectionState();
}

class _TopDoctorSectionState extends State<TopDoctorSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 5),
      child: Container(
        padding: EdgeInsets.zero,
        height: 300,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: hDoctorList.length,
            itemBuilder: (context, index) {
              var item = hDoctorList[index];
              return Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                child: Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            left: 10, bottom: 10, top: 10),
                        height: 77,
                        width: 90,
                        decoration: BoxDecoration(
                          color: const Color(0xFF009688),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(item.image!),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 8, 0, 0),
                            child: Container(
                                padding: EdgeInsets.zero,
                                child: Row(
                                  children: [
                                    Text(item.rating.toString(),
                                        style: const TextStyle(fontSize: 15.0)),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                    )
                                  ],
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 0, 0),
                            child: Text(
                              '${item.firstname!} ${item.lastname!}',
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 5, 0, 5),
                            child: Text(item.specialist!,
                                style: const TextStyle(color: Colors.blueGrey)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
