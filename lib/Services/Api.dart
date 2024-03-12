//api

import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:http/http.dart' as http;

class Api {
  static const baseUrl = "http://192.168.51.168/api/";

  //post method
  static addProduct(Map data) async {
    var url = Uri.parse("${baseUrl}add_product");
    try {
      final res = await http.post(url, body: data);
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body.toString());
        print("success ,$data");
      } else {
        print("not");
      }
    } catch (e) {
      print('error: here : $e');
    }
  }

//get method
  static Future<List<Product>> getProduct() async {
    List<Product> products = [];

    var url = Uri.parse("${baseUrl}get_product");
    final res = await http.get(url);

    try {
      if (res.statusCode == 200) {
        var data = jsonDecode(res.body);
        print('data/get : $data');
        try {
          data.forEach((value) {
            try {
              print('value : $value');
            } catch (e) {
              print("its the ");
            }
            products.add(
              Product(
                name: value['pname'],
                desc: value['pdesc'],
                price: int.parse(value['pprice']),
              ),
            );
          });
        } catch (e) {
          print("error at : $e");
          print("product : $products");
        }
        return products;
      } else {
        return []; // return an empty list if status code is not 200
      }
    } catch (e) {
      print("something is wrong at get/: $e");
      return []; // return an empty list if an error occurs
    }
  }
}

class Product {
  final String name;
  final String desc;
  final int price;

  Product({required this.name, required this.desc, required this.price});
}
