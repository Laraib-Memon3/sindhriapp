import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedCard = 'credit';
  bool saveCardDetails = false;

  void showSuccessDialog(BuildContext context){
    showDialog(
        context: context,
        builder: (BuildContext context){
          return Dialog(
            backgroundColor: Color(0xFFFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 35,
                    child: Icon(Icons.check_rounded, size: 60, color: Colors.white),
                  ),
                  SizedBox(height: 25),
                  Text("Success !",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Colors.red
                      )
                  ),
                  SizedBox(height: 15),
                  Text("Your payment was successful. \nA receipt for this purchase has \nbeen sent to your email.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[700]
                      )
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                        backgroundColor: Colors.red

                      ),
                      child: Text("Go Back",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black
                          )
                      )
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Text("Order summary", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white)),
              SizedBox(height: 5),

              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    customText("Order", "\$250", fontweight: FontWeight.normal),
                    SizedBox(height: 18),
                    customText("Taxes", "\$1.5", fontweight: FontWeight.normal),
                    SizedBox(height: 18),
                    customText("Delivery Fees", "\$3.5", fontweight: FontWeight.normal),
                    SizedBox(height: 15),
                    Container(
                      height: 1,
                      width: 315,
                      color: Colors.white,
                    ),
                    SizedBox(height: 20),
                    customText("Total", "\$255.00", fontweight: FontWeight.bold, fontsize: 19),
                  ],
                ),
              ),

              SizedBox(height: 16),
              customText("Estimated delivery time: ", "15 - 30mins", fontweight: FontWeight.bold, fontsize: 13),
              SizedBox(height: 60),
              Text("Payment methods", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white)),
              SizedBox(height: 15),

              // 1st Card
              paymentCard(
                imagePath: 'assets/Images/Payment/Master_Card.png',
                title: 'Credit Card',
                number: '5105 **** **** 0505',
                value: 'credit',
                selectedValue: selectedCard,
                onChanged: (val) {
                  setState(() {
                    selectedCard = val!;
                  });
                },
                imageHeight: 50,
              ),
              SizedBox(height: 15),
              // 2nd Card
              paymentCard(
                imagePath: 'assets/Images/Payment/Visa.png',
                title: 'Debit Card',
                number: '3566 **** **** 0505',
                value: 'debit',
                selectedValue: selectedCard,
                onChanged: (val) {
                  setState(() {
                    selectedCard = val!;
                  });
                },
                imageHeight: 40
              ),

              SizedBox(height: 15),
              Row(
                children: [
                  Checkbox(
                    value: saveCardDetails,
                    activeColor: Colors.red,
                    checkColor: Colors.white,
                    onChanged: (bool? value){
                      setState(() {
                        saveCardDetails = value!;
                      });
                    },
                  ),
                  Text("Save card details for future payments", style: TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold))
                ],
              ),

              SizedBox(height: 60),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Total price", style: TextStyle(fontSize: 15, color: Colors.white)),
                      Text("\$255.00", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white)),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      showSuccessDialog(context);
                      // print("button press");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                    ),
                    child: Text(
                      "Pay Now",
                      style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}

Widget customText(String str1, String str2, {double fontsize = 17, Color color=Colors.white, FontWeight fontweight = FontWeight.bold}){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(str1, style: TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight)),
      Text(str2, style: TextStyle(fontSize: fontsize, color: color, fontWeight: fontweight)),
    ],
  );
}

Widget paymentCard({
  required String imagePath,
  required String title,
  required String number,
  required String value,
  required String selectedValue,
  required Function(String?) onChanged,
  double imageHeight = 50
}) {
  return Container(
    height: 95,
    width: double.infinity,
    decoration: BoxDecoration(
      color: selectedValue == value ? Colors.brown : Colors.grey.shade200,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Image.asset(imagePath, height: imageHeight),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: TextStyle(
                      fontSize: 16,
                      color: selectedValue == value ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 5),
                Text(number,
                    style: TextStyle(
                      fontSize: 14,
                      color: selectedValue == value ? Colors.white70 : Colors.black54,
                    )),
              ],
            ),
          ),
          Radio<String>(
            value: value,
            groupValue: selectedValue,
            onChanged: onChanged,
          ),
        ],
      ),
    ),
  );
}
