import 'package:basicbankingapp/choosecustomer.dart';
import 'package:flutter/material.dart';

class CustomerProfile extends StatelessWidget {
  final String name;
  final String email;
  final int currentbalance;
  final int customerid;
  final tid;
  final accountno;
  CustomerProfile(
      {this.name,
      this.customerid,
      this.email,
      this.currentbalance,
      this.tid,
      this.accountno});
  TextStyle texttheme() {
    return TextStyle(
        fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(195, 186, 133, 1),
        title: Text(
          name,
          style: TextStyle(fontSize: 25, color: Colors.black87),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              width: 200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100)),
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                onBackgroundImageError: (exception, stackTrace) => Text(
                  'CP',
                  style: TextStyle(fontSize: 15, color: Colors.black87),
                ),
                backgroundImage: AssetImage(
                  "assets/images/profile.jpg",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 300,
              width: 400,
              child: Card(
                margin: EdgeInsets.all(30),
                elevation: 5,
                color: Color.fromRGBO(218, 213, 171, 1),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 8, 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name : $name",
                        style: texttheme(),
                      ),
                      Text(
                        "Customer ID : ${customerid.toString()}",
                        style: texttheme(),
                      ),
                      Text(
                        "Account Number :  $accountno",
                        style: texttheme(),
                      ),
                      Text(
                        "Email : $email",
                        style: texttheme(),
                      ),
                      Text(
                        "Current Balance : ₹ $currentbalance",
                        style: texttheme(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
                height: 70,
                width: 200,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return ChooseCustomer(
                        tname: name,
                        tcurrentbalance: currentbalance,
                        tcustomerid: customerid,
                        temail: email,
                        tid: tid,
                      );
                    }));
                  },
                  child: Container(
                    //padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(195, 186, 133, 1),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          // soften the shadow
                          spreadRadius: 1.0, //extend the shadow
                          offset: Offset(
                            2.0, // Move to right 10  horizontally
                            3.0, // Move to bottom 10 Vertically
                          ),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Transfer',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                )),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
