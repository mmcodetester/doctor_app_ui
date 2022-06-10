import 'package:doctor_app_ui/model/header_doctor.dart';
import 'package:flutter/material.dart';

class HeartSpecialList extends StatefulWidget {
  const HeartSpecialList({Key? key}) : super(key: key);

  @override
  State<HeartSpecialList> createState() => _HeartSpecialListState();
}

class _HeartSpecialListState extends State<HeartSpecialList> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 30, 5, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 20),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                        )),
                  ),
                  const Text("Heart Specialists",
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                  const SizedBox(
                    width: 5,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(5, 10, 5, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          border: Border.all(color: const Color(0xFF009688))),
                      padding: EdgeInsets.zero,
                      width: 40,
                      height: 40,
                      child: const Center(
                        child: Icon(Icons.calendar_today_outlined,
                            color: Colors.red),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    child: Text(
                      "16",
                      style: TextStyle(fontSize: 29),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Text(
                            "Thursday",
                            style:
                                TextStyle(fontSize: 10.0, color: Colors.grey),
                          ),
                        ),
                        Text("May,2022")
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: hDoctorList.length,
                itemBuilder: (context, index) {
                  var item = hDoctorList[index];
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0))),
                    height: 200,
                    margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  15, 15, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                      "Dr. ${item.firstname} ${item.lastname}"),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Text("${item.specialist}"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0),
                                    child: Row(
                                      children: [
                                        Text(item.rating.toString(),
                                            style:
                                                const TextStyle(fontSize: 15)),
                                        const Icon(Icons.star, size: 18)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue.withOpacity(0.3),
                                  child: const Icon(
                                    Icons.phone,
                                    size: 20,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: GestureDetector(
                                child: CircleAvatar(
                                  backgroundColor: Colors.red.withOpacity(0.3),
                                  child: const Icon(
                                    Icons.video_call_outlined,
                                    size: 20,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: CircleAvatar(
                                backgroundColor: Colors.green.withOpacity(0.3),
                                child: const Icon(
                                  Icons.message_outlined,
                                  size: 20,
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(120, 40),
                                      primary: Colors.red.withOpacity(0.8)),
                                  onPressed: () {},
                                  child: const Text("Details")),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(120, 40),
                                      primary: Colors.blue.withOpacity(0.8)),
                                  onPressed: () {},
                                  child: const Text("Appointment"))
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
