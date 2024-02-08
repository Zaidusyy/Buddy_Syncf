import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:uu_loginui/AddTransection.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {

   final double income=0,expenses=0,balance=0;

  Map<String, double> datamap = {
    "Income": 500,
    "Expenses": 200,
    "Balance": 300,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTransection()));
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.purple,
        ),
        backgroundColor: null,
      ),
      backgroundColor: Colors.purple.shade50,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.purple.shade50,
            child: PieChart(
              dataMap: datamap,
              animationDuration: Duration(milliseconds: 3000),
              chartLegendSpacing: 40,
              chartRadius: 150,
              colorList: [Colors.green.shade500, Colors.red.shade500, Colors.purple.shade500],
              initialAngleInDegree: 0,
              chartType: ChartType.ring,
              ringStrokeWidth: 25,

              centerText: "Wallet",
              legendOptions: LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.right,
                showLegends: true,
                legendShape: BoxShape.rectangle,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              chartValuesOptions: ChartValuesOptions(
                showChartValueBackground: true,
                showChartValues: true,
                //  showChartValuesInPercentage: true,
                showChartValuesOutside: true,
                decimalPlaces: 1,
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),

                  color: Colors.white),
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    if (index % 4 == 0) {
                      return ListTile(
                        title: Text('Income'),
                        subtitle: Text(
                          '500',
                          style: TextStyle(color: Colors.green),
                        ),
                        trailing: Icon(
                          Icons.call_received_outlined,
                          color: Colors.green,
                        ),
                      );
                    }

                    return ListTile(
                      title: Text('Expenses'),
                      subtitle: Text(
                        '200',
                        style: TextStyle(color: Colors.red),
                      ),
                      trailing: Icon(
                        Icons.call_made_outlined,
                        color: Colors.red,
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
