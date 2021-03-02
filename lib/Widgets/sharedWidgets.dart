import 'package:flutter/material.dart';

Widget educationCard(context, title, fromYear, toYear, desc) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48), bottomRight: Radius.circular(48)),
      side: BorderSide(
        color: Color(0xff384669),
        width: 1.0,
      ),
    ),
    shadowColor: Color(0xff384669),
    color: Color(0xfff4f1de),
    elevation: 7,
    child: Container(
      padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff384669),
                    fontWeight: FontWeight.w700),
              )),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "From: ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff384669),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  fromYear,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff384669),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "To: ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff384669),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  toYear,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff384669),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Text("Description: ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff384669),
                      fontWeight: FontWeight.w700))),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(desc),
          )
        ],
      ),
    ),
  );
}

Widget skillsCard(context, title, desc) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48), bottomRight: Radius.circular(48)),
      side: BorderSide(
        color: Color(0xff384669),
        width: 1.0,
      ),
    ),
    shadowColor: Color(0xff384669),
    color: Color(0xffdee2ff),
    elevation: 7,
    child: Container(
      padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff384669),
                    fontWeight: FontWeight.w700),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Text("Description: ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff384669),
                      fontWeight: FontWeight.w700))),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              desc,
              maxLines: 4,
              softWrap: true,
            ),
          )
        ],
      ),
    ),
  );
}

Widget experienceCard(context, title, fromYear, toYear, desc) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48), bottomRight: Radius.circular(48)),
      side: BorderSide(
        color: Color(0xff384669),
        width: 1.0,
      ),
    ),
    shadowColor: Color(0xff384669),
    color: Color(0xfff2e9e4),
    elevation: 7,
    child: Container(
      padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding: EdgeInsets.fromLTRB(0, 12, 0, 12),
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff384669),
                    fontWeight: FontWeight.w700),
              )),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "From: ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff384669),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  fromYear,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff384669),
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "To: ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff384669),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  toYear,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff384669),
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(10),
              child: Text("Description: ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff384669),
                      fontWeight: FontWeight.w700))),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(
              desc,
              maxLines: 8,
              softWrap: true,
            ),
          )
        ],
      ),
    ),
  );
}

Widget homeCard(context, title, value) {
  return Container(

    padding: const EdgeInsets.fromLTRB(12,4,12,4),
    child: Card(
      elevation: 3,
color: Color(0xfffeeafa),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width *0.30,
            child: Text(title + " :",style: TextStyle(color: Color(0xff384669),fontSize: 18,fontWeight: FontWeight.w700),),
          ),
          Container(
            padding: EdgeInsets.all(5),
            width: MediaQuery.of(context).size.width *0.60,
            child: Text(value,style: TextStyle(color: Color(0xff384669),fontSize: 18,fontWeight: FontWeight.w400),),
          ),
        ],
      ),
    ),
  );
}
