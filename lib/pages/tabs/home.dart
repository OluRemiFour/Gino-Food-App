import 'package:flutter/material.dart';
import 'package:ginofood/components/product_items_constructor.dart';
import 'package:ginofood/pages/tabs/cart_screen.dart';
import 'package:ginofood/pages/tabs/category_screen.dart';
import 'package:ginofood/pages/tabs/favorite_screen.dart';
import 'package:ginofood/components/product_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String id = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePageContent(),
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
  HomePageContent({super.key});

  final List<ProductItems> _productItems = [
    ProductItems(
      id: 1,
      name: 'Chili Pepper',
      price: 150,
      description: 'Bowl',
      image: 'images/Red-Peppers.png',
    ),
    ProductItems(
      id: 2,
      name: 'Lettuce',
      price: 200,
      description: 'Bunch',
      image: 'images/pngwing.png',
    ),
    ProductItems(
      id: 3,
      name: 'Bell Pepper',
      price: 500,
      description: 'Bowl',
      image: 'images/Peppers.png',
    ),
    ProductItems(
      id: 4,
      name: 'Ripe Tomatoes',
      price: 200,
      description: 'Bowl',
      image: 'images/Tomatoes.png',
    ),
    ProductItems(
      id: 5,
      name: 'Onions',
      price: 200,
      description: 'Bowl',
      image: 'images/onions.png',
    ),
    ProductItems(
      id: 6,
      name: 'Water Melon',
      price: 200,
      description: 'Bowl',
      image: 'images/waterMelon.png',
    ),
  ];

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
        Expanded(
          child: ProductItem(
            productItems: _productItems,
          ),
        ),
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
