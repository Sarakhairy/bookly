import 'package:bookly/Core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
    routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
    ).copyWith(
      scaffoldBackgroundColor: Color(0xFFF1F5F9),
      textTheme: GoogleFonts.montserratTextTheme(),
    ),

    );
  }
}
