import 'package:admin/constants.dart';
import 'package:admin/screens/main/main_screen.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final isWideScreen = MediaQuery.of(context).size.width >= 980;

    return Scaffold(
      backgroundColor: secondaryColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal:
              isWideScreen ? MediaQuery.of(context).size.width / 11 : 16,
        ),
        children: [
          if (isWideScreen) Menu(), // Katta ekranlarda menyu ko'rsatiladi
          Body(isWideScreen: isWideScreen),
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _menuItem(title: 'Asosiy'),
              _menuItem(title: 'Biz haqimizda'),
              _menuItem(title: 'Biz bilan bog`lanish'),
              _menuItem(title: 'Shikoyatlar'),
            ],
          ),
          Row(
            children: [
              _menuItem(title: 'Xush Kelibsiz', isActive: true),
            ],
          ),
        ],
      ),
    );
  }

  Widget _menuItem({String title = 'Title Menu', isActive = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.deepPurple : Colors.grey,
              ),
            ),
            const SizedBox(height: 6),
            isActive
                ? Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  final bool isWideScreen;

  const Body({required this.isWideScreen});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: isWideScreen ? 0 : 30),
        isWideScreen
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _leftSection(context),
                  Image.asset(
                    'assets/images/illustration-1.png',
                    width: 300,
                  ),
                  _rightSection(context),
                ],
              )
            : Column(
                children: [
                  _leftSection(context),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/images/illustration-1.png',
                    width: 300,
                  ),
                  SizedBox(height: 20),
                  _rightSection(context),
                ],
              ),
      ],
    );
  }

  Widget _leftSection(BuildContext context) {
    return Container(
      width: isWideScreen ? 360 : double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Talabalar va O`qituvchilarni Qo`llab quvvatlash Asosida ',
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "Siz uchun qulay nazorat va yuqori natija ",
            style:
                TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Text(
                "Biz",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 8),
              GestureDetector(
                onTap: () {
                  // Example action
                },
                child: const Text(
                  "Bilan OSON",
                  style: TextStyle(
                      color: Colors.deepPurple, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _rightSection(BuildContext context) {
    return SizedBox(
      width: isWideScreen
          ? MediaQuery.of(context).size.width * 0.2
          : double.infinity,
      child: _formLogin(context),
    );
  }

  Widget _formLogin(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: 'Email pochta manzil',
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            hintText: 'Paroll',
            suffixIcon: const Icon(
              Icons.visibility_off_outlined,
              color: Colors.grey,
            ),
            filled: true,
            fillColor: Colors.blueGrey[50],
            labelStyle: const TextStyle(fontSize: 12),
            contentPadding: const EdgeInsets.only(left: 30),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blueGrey),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.04,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width * 0.04,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.5))),
            child: const Center(child: Text("Kirish")),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainScreen()),
              );
            },
          ),
        ),
      ],
    );
  }
}
