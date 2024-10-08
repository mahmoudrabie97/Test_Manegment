import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_mangement/utilites/widgets/showdialog.dart';

class CallApi {
  static String msg = '';

  static Future<http.Response?> postData(
      {required Map data,
      required String baseUrl,
      required String apiUrl,
      required Map<String, String> headers,
      required BuildContext context}) async {
    try {
      msg = '';
      var fullUrl = baseUrl + apiUrl;
      var jsonData = jsonEncode(data);

      return await http.post(Uri.parse(fullUrl),
          body: jsonData, headers: headers);
    } on IOException catch (e) {
      debugPrint('Socket Error: $e');
      msg = 'Socket Error: $e';
    } on Error catch (e) {
      debugPrint('General Error: $e');
      msg = 'General Error: $e';
    } on TimeoutException catch (e) {
      debugPrint('Timeout Error: $e');
      msg = 'Timeout Error: $e';
    } on FormatException catch (e) {
      debugPrint('Format Error: $e');
      msg = 'Format Error: $e';
    }

    if (msg != '') {
      ShowMyDialog.showMsg(context, msg);
    }

    // Add a default return statement with a value of null or throw an exception
    return null;
  }

  static Future<http.Response?> getData(
      {required String baseUrl,
      required String apiUrl,
      required BuildContext context,
      required Map<String, String> headers}) async {
    try {
      msg = '';
      var fullUrl = baseUrl + apiUrl;
      return await http.get(Uri.parse(fullUrl), headers: headers);
    } on IOException catch (e) {
      debugPrint('Socket Error: $e');
      msg = 'Socket Error: $e';
    } on Error catch (e) {
      debugPrint('General Error: $e');
      msg = 'General Error: $e';
    } on TimeoutException catch (e) {
      debugPrint('Timeout Error: $e');
      msg = 'Timeout Error: $e';
    } on FormatException catch (e) {
      debugPrint('Timeout Error: $e');
      msg = 'Timeout Error: $e';
    }

    if (msg != '') {
      debugPrint(msg);
      ShowMyDialog.showMsg(context, msg);
    }
    return null;
  }

  static Future<http.Response?> putData({
    required Map data,
    required String baseUrl,
    required String apiUrl,
    required Map<String, String> headers,
    required BuildContext context,
  }) async {
    try {
      msg = '';
      var fullUrl = baseUrl + apiUrl;

      // Convert any Set objects in the data map to List
      Map<String, dynamic> encodableData = {};
      data.forEach((key, value) {
        if (value is Set) {
          encodableData[key] = value.toList();
        } else {
          encodableData[key] = value;
        }
      });

      var jsonData = jsonEncode(encodableData);

      return await http.put(
        Uri.parse(fullUrl),
        body: jsonData,
        headers: headers,
      );
    } on IOException catch (e) {
      debugPrint('Socket Error: $e');
      msg = 'Socket Error: $e';
    } on Error catch (e) {
      debugPrint('General Error: $e');
      msg = 'General Error: $e';
    } on TimeoutException catch (e) {
      debugPrint('Timeout Error: $e');
      msg = 'Timeout Error: $e';
    } on FormatException catch (e) {
      debugPrint('Format Error: $e');
      msg = 'Format Error: $e';
    }

    if (msg != '') {
      ShowMyDialog.showMsg(context, msg);
    }

    // Add a default return statement with a value of null or throw an exception
    return null;
  }

  static _setHeaders() => {'Content-Type': 'application/x-www-form-urlencoded'};
}
