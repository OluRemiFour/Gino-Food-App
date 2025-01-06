import 'package:flutter/material.dart';
import 'package:ginofood/screens/cart_screen.dart';
import 'package:ginofood/screens/category_screen.dart';
import 'package:ginofood/screens/favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String id = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomePageContent(),
    const CategoryScreen(),
    const FavoriteScreen(),
    const CartScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Cart',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTabTapped,
        unselectedItemColor: const Color.fromARGB(255, 116, 140, 108),
        selectedItemColor: const Color(0xff3CAE12),
        showUnselectedLabels: true,
      ),
    );
  }
}

class HomePageContent extends StatelessWidget {
  const HomePageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(30)),
                    color: Color(0xfF001b0d),
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        color: Color(0xffE6E6E6),
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 70,
                      bottom: 120,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.menu,
                            color: Color(0xff32910F),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Image(
                            height: 40,
                            width: 100,
                            image: AssetImage('images/homelogo.png'),
                          ),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: Color(0xff32910F),
                              ),
                            ),
                            const CircleAvatar(
                              radius: 15.0,
                              backgroundImage: AssetImage('images/user.png'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 180,
              left: MediaQuery.of(context).size.width / 2 - 175,
              child: Container(
                width: 350,
                height: 150,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/banner.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 420,
          child: Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 45, vertical: 110),
              child: Row(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xffE3F6DC),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset('images/Red-Peppers.png'),
                          const SizedBox(height: 8),
                          const Text(
                            'Ripe Tomato',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 4),
                              const Text(
                                'N150/ Bowl',
                                style: TextStyle(
                                    color: Color(0xffE7AC07),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.add,
                                  color: Colors.green,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({super.key});

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndex = 0;

  void _navigateToScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
        break;
      case 1:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CategoryScreen()));
        break;
      case 2:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FavoriteScreen()));
        break;
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CartScreen()));
        break;
      default:
        break;
    }
  }

  // Make this `final` since it's immutable
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          label: 'Cart',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _navigateToScreen,
      unselectedItemColor: const Color.fromARGB(255, 116, 140, 108),
      selectedItemColor: const Color(0xff3CAE12),
      showUnselectedLabels: true,
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
    );
  }
}



  //  Column(
  //         children: [
  //           Row(
  //             children: [
  //               Image.asset('images/'),
  //               const SizedBox(width: 20),
  //               const Text(
  //                 'Ripe Tomato',
  //                 style: TextStyle(color: Colors.black, fontSize: 18),
  //               ),
  //               Column(
  //                 children: [
  //                   const Text(
  //                     'Ripe Tomato',
  //                     style: TextStyle(color: Colors.black, fontSize: 18),
  //                   ),
  //                   IconButton(
  //                     onPressed: () {},
  //                     icon: const Icon(
  //                       Icons.plus_one,
  //                       color: Colors.green,
  //                     ),
  //                   )
  //                 ],
  //               )
  //             ],
  //           )
  //         ],
  //       )