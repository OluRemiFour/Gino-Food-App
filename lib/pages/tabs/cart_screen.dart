import 'package:flutter/material.dart';
import 'package:ginofood/pages/others/order_completion.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});
  static String id = 'cart_screen';

  @override
  State<CartScreen> createState() => _CartScreenState();

  final showCheckOut = true;
}

class _CartScreenState extends State<CartScreen> {
  int _productQuantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                  left: 80.0, right: 80.0, top: 80.0, bottom: 20.0),
              child: Text(
                'Shopping Cart',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
            ),
            Flexible(
              child: Column(
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: const Color(0xffE3F6DC),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'images/Tomatoes.png',
                            width: 100.0,
                            height: 100.0,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Tomatoes',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '1 Bowl',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'N150.00',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Color(0xffE7AC07),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _productQuantity--;
                                          if (_productQuantity < 1) {
                                            _productQuantity = 1;
                                          }
                                        });
                                      },
                                      icon: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Icon(
                                            Icons.remove,
                                            size: 20.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        _productQuantity.toString(),
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _productQuantity++;
                                        });
                                      },
                                      icon: Container(
                                        decoration: const BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle,
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(2.0),
                                          child: Icon(
                                            Icons.add,
                                            size: 20.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {
                      _showBottomDialog(context);
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 130,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xff43C114),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          'Checkout',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
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

void _showBottomDialog(BuildContext context) {
  // ValueNotifier<bool> showPaymentDetails = ValueNotifier(true);
  ValueNotifier<bool> showPaymentDetails = ValueNotifier<bool>(true);
  ValueNotifier<bool> showCardChecked = ValueNotifier(false);
  ValueNotifier<bool> showWalletChecked = ValueNotifier(false);

  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.only(top: 20.0, left: 25.0, right: 25.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: Icon(Icons.line_axis_rounded),
            // ),
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Checkout!',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 40.0),
                Column(
                  children: [
                    ValueListenableBuilder(
                      valueListenable: showPaymentDetails,
                      builder: (context, showPaymentDetails, _) {
                        if (showPaymentDetails) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0),
                                child: Text(
                                  'Delivery Location',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Expanded(
                                    child: Text(
                                      'Plot 13, Anjorin street, Animashaun Ofe Nigbala, Ilorin, Kwara State.',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.black,
                                      ),
                                      softWrap:
                                          true, // Enables automatic line breaking
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.edit_note,
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        } else {
                          return Column(
                            children: [
                              Row(
                                children: [
                                  ValueListenableBuilder(
                                      valueListenable: showCardChecked,
                                      builder: (context, showCardChecked, _) {
                                        if (showCardChecked == false) {
                                          return const Icon(
                                            Icons.circle_outlined,
                                            color: Colors.green,
                                          );
                                        } else {
                                          return const Icon(
                                            Icons.check_circle_rounded,
                                            color: Colors.green,
                                          );
                                        }
                                      }),
                                  const SizedBox(width: 15.0),
                                  Expanded(
                                    child: OutlinedButton(
                                      onPressed: () {
                                        showCardChecked.value =
                                            !showCardChecked.value;
                                      },
                                      style: OutlinedButton.styleFrom(
                                        side: const BorderSide(
                                            color: Colors.green, width: 2.0),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              12.0), // Set the border radius here
                                        ),
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 14.0, horizontal: 8.0),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                  'images/masterCard.png'),
                                              const SizedBox(width: 10),
                                              const Text(
                                                '*** *** *** *** 278',
                                                style: TextStyle(
                                                    color: Colors.green),
                                              ),
                                            ],
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20.0),
                              Row(
                                children: [
                                  ValueListenableBuilder(
                                      valueListenable: showWalletChecked,
                                      builder: (context, showWalletChecked, _) {
                                        if (showWalletChecked == false) {
                                          return const Icon(
                                            Icons.circle_outlined,
                                            color: Colors.green,
                                          );
                                        } else {
                                          return const Icon(
                                            Icons.check_circle_rounded,
                                            color: Colors.green,
                                          );
                                        }
                                      }),
                                  const SizedBox(width: 15.0),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        showWalletChecked.value =
                                            !showWalletChecked.value;
                                      },
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: const Color(0xffE3F6DC),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 15.0, horizontal: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(Icons.wallet,
                                                      color: Colors.green),
                                                  SizedBox(width: 5),
                                                  Text(
                                                    'My Wallet',
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                'N150,562.00',
                                                style: TextStyle(
                                                    color: Colors.green),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        }
                      },
                    )
                  ],
                ),
                const SizedBox(height: 10.0),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'Order Info',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'N150.00',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xffE7AC07),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Free',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xffE7AC07),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Divider(
                      color: Colors.grey,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'N150.00',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xffE7AC07),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
              ],
            ),

            ValueListenableBuilder(
                valueListenable: showPaymentDetails,
                builder: (context, value, _) {
                  if (value == true) {
                    return Flexible(
                      child: TextButton(
                        onPressed: () {
                          showPaymentDetails.value = !value;
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 140,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff43C114),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'Proceed',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  } else {
                    return Flexible(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            OrderCompletion.id,
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          padding: const EdgeInsets.symmetric(
                            vertical: 8.0,
                            horizontal: 160,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color(0xff43C114),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'Pay',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                })
          ],
        ),
      );
    },
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(50.0),
      ),
    ),
  );
}



// Dialogue display 

// void _showBottomDialog(BuildContext context) {
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: Text('Your Title Here'),
//         content: Text('This is the content inside the bottom sheet dialog.'),
//         actions: <Widget>[
//           ElevatedButton(
//             onPressed: () {
//               Navigator.pop(context); // Close the dialog
//             },
//             child: Text('Close'),
//           ),
//         ],
//       );
//     },
//   );
// }
