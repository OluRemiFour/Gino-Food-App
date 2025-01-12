import 'package:flutter/material.dart';
import 'package:ginofood/components/product_items_constructor.dart';

class ProductItem extends StatelessWidget {
  final List<ProductItems> productItems;

  const ProductItem({Key? key, required this.productItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 70, bottom: 20),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.8,
          ),
          itemCount: productItems.length,
          itemBuilder: (context, index) {
            final item = productItems[index];
            return DecoratedBox(
              decoration: BoxDecoration(
                color: const Color(0xffE3F6DC),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 12.0,
                  right: 12.0,
                  top: 12.0,
                  bottom: 4.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(item.image),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Text(
                        item.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    // Text(
                    //   '${item.price} / ${item.description}',
                    //   style: const TextStyle(
                    //     color: Color(0xffE7AC07),
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 18,
                    //   ),
                    // ),
                    // const Spacer(),
                    // Align(
                    //   alignment: Alignment.bottomRight,
                    //   child: IconButton(
                    //     onPressed: () {},
                    //     icon: Container(
                    //       decoration: const BoxDecoration(
                    //         color: Colors.green,
                    //         shape: BoxShape.rectangle,
                    //       ),
                    //       child: const Padding(
                    //         padding: EdgeInsets.all(1.0),
                    //         child: Icon(
                    //           Icons.add,
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${item.price} / ${item.description}',
                          style: const TextStyle(
                              color: Color(0xffE7AC07),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Container(
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.rectangle,
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(1.0),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
