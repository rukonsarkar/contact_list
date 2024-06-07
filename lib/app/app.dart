import 'package:contact_list_assignment/providers/contact_list_provider.dart';
import 'package:contact_list_assignment/themes/appbar_style.dart';
import 'package:contact_list_assignment/themes/elevated_button_style.dart';
import 'package:contact_list_assignment/themes/textfield_style.dart';
import 'package:contact_list_assignment/utils/colors.dart';
import 'package:contact_list_assignment/views/homeScreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) { return ContactListProvider(); },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
        theme: ThemeData(
          appBarTheme: AppbarStyle.getAppBarTheme(),
          inputDecorationTheme: TextFieldStyle.getTextFieldStyle(),
          elevatedButtonTheme: ElevatedButtonStyle.getElevatedButtonStyle(),
          scaffoldBackgroundColor: whiteColor,
        ),
      ),
    );
  }
}
