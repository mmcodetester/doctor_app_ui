import 'package:flutter/material.dart';

class AmbulanceHome extends StatefulWidget {
  const AmbulanceHome({Key? key}) : super(key: key);

  @override
  State<AmbulanceHome> createState() => _AmbulanceHomeState();
}

class _AmbulanceHomeState extends State<AmbulanceHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 35, 0, 0),
              child: Text(
                "Always ready \nanytime & anywhere!",
                style: TextStyle(color: Color(0xFF009688), fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 15, 20, 0),
              child: TextFormField(
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  fillColor: Colors.white.withOpacity(0.5),
                  filled: true,
                  hintText: 'Passord',
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Colors.white, width: 2.0)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2.0)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 15, 0, 0),
              child: Text(
                "Services by categories",
                style: TextStyle(color: Color(0xFF009688), fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
