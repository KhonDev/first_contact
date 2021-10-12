import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF3C3E44),
        ),
        primarySwatch: Colors.grey,
      ),
      // home: SecondPage(),
      home: const SomeProject(),
    );
  }
}

class SomeProject extends StatelessWidget {
  const SomeProject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF24282F),
      appBar: AppBar(
        title: const Text(
          'Rick and Morty',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF3C3E44),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  width: 325.0,
                  height: 84.18,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage('assets/iavatar.jpeg'),
                            ),
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.white),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Daron Jefferson',
                            style: TextStyle(
                                fontSize: 17.0,
                                fontFamily: 'SF UI Display',
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 10.0,
                                height: 10.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFF00C48C),
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Colors.white),
                                ),
                              ),
                              const SizedBox(
                                width: 5.0,
                              ),
                              const Text(
                                'Alive - Human',
                                style: TextStyle(color: Color(0xFF6C6E72)),
                              ),
                              const SizedBox(
                                width: 80.0,
                              ),
                              const Text(
                                'Famela',
                                style: TextStyle(
                                  color: Color(0xFF6C6E72),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF24282F),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF999999),
          ),
        ),
        title: const Text(
          'Daron Jafferson',
          style: TextStyle(
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 25.0),
            Center(
              child: Column(
                children: [
                  Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('assets/iavatar.jpeg'),
                      ),
                      shape: BoxShape.circle,
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  SizedBox(
                    width: 120.0,
                    height: 15.0,
                    child: Row(
                      children: [
                        Container(
                          width: 15.0,
                          height: 15.0,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Text(
                          'Alive - Human',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Origin location',
                    style: TextStyle(
                      color: Color(0xFF686A70),
                      fontSize: 13.0,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    'Earth (K-83)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                  ),
                  const Divider(
                    height: 20.0,
                    color: Colors.white,
                  ),
                  const Text(
                    'Gender',
                    style: TextStyle(
                      color: Color(0xFF686A70),
                      fontSize: 13.0,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                    'Female',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                  ),
                  const Divider(
                    height: 20.0,
                    color: Colors.white,
                  ),
                  Text(
                    'Location',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    'Citadel of Ricks',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
