import 'package:flutter/material.dart';

// import 'package:untitled/tip.dart';
// import 'login.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme:
            ThemeData(primarySwatch: Colors.green, primaryColor: Colors.green),
        home: TipCalculator() //Set first screen of the app
        );
  }
}

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});
  @override
  State<TipCalculator> createState() => TipCalculatorState();
}

class TipCalculatorState extends State<TipCalculator> {
  TextEditingController tipController = TextEditingController();
  TextEditingController billAmountController = TextEditingController();
  TextEditingController phonenumber = TextEditingController();

  double tipAmnt = 0;
  double totalBill = 0.00;

// void TipCalculatorOnBill(){
//     double tipPer = 0.00;
//     double tipAmnt = 0;
//     double totalBill= 0.00;

//     setState(() {
//       tipAmnt = (totalBill * tipPer)/100;
//           });
//   }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tip Calculator"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('Tip : $tipAmnt'),
              TextFormField(
                controller: billAmountController,
                validator: (String? totalBill) {
                  if (totalBill == "") {
                    return "Bill Amount cannot be empty";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Total Bill Amount'),
              ),
              const SizedBox(
                height: 20,
              ),
              // TextFormField(
              TextFormField(
                controller: tipController,
                validator: (String? tipper) {
                  if (tipper == "") {
                    return "Tip field cannot be empty";
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter tip '),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: phonenumber,
                validator: (String? number) {
                  if (number == null || number.isEmpty) {
                    return 'Please enter a number';
                  }

                  final RegExp numberRegex = RegExp(r'^0\d{10}$');

                  if (!numberRegex.hasMatch(number)) {
                    return 'Please enter a valid number';
                  }

                  return null;
                },
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'number '),
              ),

              Text('Total bill after adding tip : $totalBill'),

              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double tipPer =
                          double.tryParse(tipController.text) ?? 0.0;
                      double bill =
                          double.tryParse(billAmountController.text) ?? 0.0;
                      // double totalBill =  double.tryParse(billAmountController.text)??0.0;
                      tipAmnt = (tipPer * bill) / 100;
                      totalBill = tipAmnt + bill;
                      _formKey.currentState!.validate();
                    });
                  },
                  child: const Text("Calculate Tip"))
            ],
          ),
        ),
      ),
    );
  }
}
