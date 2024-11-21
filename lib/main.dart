import 'package:admin/constants.dart';
import 'package:admin/controllers/MenuAppController.dart';
import 'package:admin/screens/login/login_page.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

//? https://www.google.com/search?sca_esv=e2999e5afe90a665&sca_upv=1&q=flutter+web+mobile+responsive&tbm=vid&source=lnms&fbs=AEQNm0BcPEQzCJo6339NzIm4bfyT-yKz0qpF1PY0VZZiwpyc5Fy2x_WiIIRkUdPozKzPOJ-pvrw6jadHCwIbktgRTQYHCWOMYYU8HWBUt2yVXaE-Nga48wkjsO7GjqewYByChAZfnR4K46GlgJY5_Y0jyqQ-YM8IT5H-XmGa_k1GiiRT7nxvVbv5IO9DqvPIyug4tFWjlzoH0WsiLMUx_ZYTS3W2is7Jd8jTARC_H-ZX3qw6W7rdSPM&sa=X&ved=2ahUKEwintabs_vuGAxVVLBAIHZhSCJUQ0pQJegQICxAB&biw=1146&bih=533&dpr=1.68#fpstate=ive&vld=cid:3eafe56b,vid:kmZz_q7W2jI,st:0
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MenuAppController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'nazorat.uz',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: bgColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
              .apply(bodyColor: Colors.white),
          canvasColor: secondaryColor,
        ),
        home: LoginPage(),
      ),
    );
  }
}
