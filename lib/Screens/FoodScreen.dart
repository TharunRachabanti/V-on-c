//foodScreen

import 'package:flutter/material.dart';
import '../Services/Api.dart';

class FoodScreen extends StatefulWidget {
  const FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  @override
  void initState() {
    super.initState();
    addingData();
  }

  void addingData() {
    var data = {'pname': 'temp', 'pdesc': 'sasdfa', 'pprice': '5000'};
    Api.addProduct(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Product>>(
        future: Api.getProduct(),
        builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            List<Product> pdata = snapshot.data!;

            return ListView.builder(
              itemCount: pdata.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Icon(Icons.storage),
                  title: Text('${pdata[index].name}'),
                  subtitle: Text('${pdata[index].desc}'),
                  trailing: Text('${pdata[index].price}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
