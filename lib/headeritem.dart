import 'package:flutter/material.dart';

class HeaderItem extends StatelessWidget {
  const HeaderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      decoration: const BoxDecoration(
        color: Colors.purple,
        image: DecorationImage(
            image: AssetImage("lib/assets/images/header.png"),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text("October 20,2023",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              "My ToDo List",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
