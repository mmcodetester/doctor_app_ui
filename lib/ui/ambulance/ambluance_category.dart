import 'package:doctor_app_ui/model/ambulance.dart';

import 'package:flutter/material.dart';

class AmbulanceCategory extends StatefulWidget {
  const AmbulanceCategory({Key? key}) : super(key: key);

  @override
  State<AmbulanceCategory> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<AmbulanceCategory> {
  late bool hover;
  @override
  void initState() {
    hover = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      height: 570,
      decoration: const BoxDecoration(color: Colors.transparent),
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 15.0,
            crossAxisCount: 2,
          ),
          itemCount: ambList.length,
          itemBuilder: (context, index) {
            var item = ambList[index];
            //print(item.driver!.name);
            return Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
              child: Container(
                padding: EdgeInsets.zero,
                height: 120,
                width: 120,
                child: Stack(
                  children: [
                    Positioned(
                        top: 20,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(90.0)),
                              color: Colors.green.withOpacity(0.2)),
                          padding: const EdgeInsets.only(left: 10),
                          width: 180,
                          height: 180,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 25.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.person_sharp,
                                        color: Color(0xFF009688)),
                                    Text(
                                      "Driver - ${item.driver!.name}",
                                      style: const TextStyle(
                                          color: Color(0xFF009688)),
                                    ),
                                  ],
                                ),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.only(top: 3),
                              //   child: Row(
                              //     children: [
                              //       const Icon(Icons.credit_card_outlined,
                              //           color: Color(0xFF009688)),
                              //       Text(
                              //         "Car No - ${item.carnumber}",
                              //         style: const TextStyle(
                              //             color: Color(0xFF009688)),
                              //       ),
                              //     ],
                              //   ),
                              // ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Row(
                                  children: [
                                    const Icon(Icons.phone,
                                        color: Color(0xFF009688)),
                                    Text(
                                      "Phone - ${item.driver!.phone}",
                                      style: const TextStyle(
                                          color: Color(0xFF009688)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 3, bottom: 1),
                                child: Row(
                                  children: [
                                    const Icon(Icons.location_on_outlined,
                                        color: Color(0xFF009688)),
                                    Text(
                                      "Location- ${item.location}",
                                      style: const TextStyle(
                                          color: Color(0xFF009688)),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )),
                    Positioned(
                        top: -35,
                        left: 0,
                        child: SizedBox(
                            width: 150,
                            height: 150,
                            child: Image.asset(item.image!))),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
