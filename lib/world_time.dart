import 'package:flutter/material.dart';
import 'package:net_ninja/pages/home.dart';
import 'package:net_ninja/pages/loading.dart';
import 'package:net_ninja/pages/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/' : (context) => const Loading(),
    '/home' : (context) => const Home(),
    '/location' : (context) => const ChooseLocation()
  },
));