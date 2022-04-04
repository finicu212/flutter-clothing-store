import 'package:flutter/material.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyShopPage(title: 'Shop page'),
    );
  }
}

class MyShopPage extends StatefulWidget {
  const MyShopPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyShopPage> createState() => _MyShopPageState();
}

class _MyShopPageState extends State<MyShopPage> {
  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            centerTitle: false,
            title: const Text('Shop.com'),
            actions: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart)),
            ],
            bottom: AppBar(
              title: SizedBox(
                width: double.infinity,
                height: 40,
                child:  Center(
                  child: Row(
                    children: [
                      /*
                      *
                      * Here on the IconButton onPressed should be
                      * Navigation.pop() or something that redirects us
                      * to the home page
                      * */
                      IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back)),
                      const SizedBox(width: 20,),
                      Expanded(
                        child: Container(
                          color: Colors.white,
                          child: TextField(
                            controller: _controller,
                            decoration: InputDecoration(
                                hintText: 'Search for a product',
                                /*
                                * Here is the button for going to the next page
                                * make the icon -> IconButton and make the navigation
                                * connection
                                *
                                *
                                * */
                                prefixIcon: const Icon(Icons.forward),
                                suffixIcon: IconButton(
                                    onPressed: _controller.clear,
                                    icon: const Icon(Icons.clear))),
                          ),
                        )
                      ),
                    ],
                  )
                ),
              ),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 5.0,
            crossAxisSpacing: 5.0,
            childAspectRatio: 1,
            children: [
              //row1
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    Expanded(
                        child:InkWell(
                            onTap: (){},
                            child: Image.asset(
                              'assets/images/clothing1.jpg',
                              fit: BoxFit.fitWidth,
                            )
                        ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Text('Price: 20RON'),
                        const SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: (){},
                            child: const Text('Add to cart'))
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
              ),


              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    Expanded(
                      child:InkWell(
                          onTap: (){},
                          child: Image.asset(
                            'assets/images/clothing2.jpg',
                            fit: BoxFit.fitWidth,
                          )
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Text('Price: 30RON'),
                        const SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: (){},
                            child: const Text('Add to cart'))
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
              ),


              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    Expanded(
                      child:InkWell(
                          onTap: (){},
                          child: Image.asset(
                            'assets/images/clothing3.jpg',
                            fit: BoxFit.fitWidth,
                          )
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Text('Price: 15RON'),
                        const SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: (){},
                            child: const Text('Add to cart'))
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
              ),


              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    Expanded(
                      child:InkWell(
                          onTap: (){},
                          child: Image.asset(
                            'assets/images/clothing4.jpg',
                            fit: BoxFit.fitWidth,
                          )
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Text('Price: 40RON'),
                        const SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: (){},
                            child: const Text('Add to cart'))
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
              ),

              //row2
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    Expanded(
                      child:InkWell(
                          onTap: (){},
                          child: Image.asset(
                            'assets/images/clothing5.jpg',
                            fit: BoxFit.fitWidth,
                          )
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Text('Price: 50RON'),
                        const SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: (){},
                            child: const Text('Add to cart'))
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
              ),


              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    Expanded(
                      child:InkWell(
                          onTap: (){},
                          child: Image.asset(
                            'assets/images/clothing6.jpg',
                            fit: BoxFit.fitWidth,
                          )
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Text('Price: 80RON'),
                        const SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: (){},
                            child: const Text('Add to cart'))
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
              ),

              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    Expanded(
                      child:InkWell(
                          onTap: (){},
                          child: Image.asset(
                            'assets/images/clothing7.jpg',
                            fit: BoxFit.fitWidth,
                          )
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Text('Price: 47RON'),
                        const SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: (){},
                            child: const Text('Add to cart'))
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
              ),


              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Column(
                  children: [
                    Expanded(
                      child:InkWell(
                          onTap: (){},
                          child: Image.asset(
                            'assets/images/clothing8.jpg',
                            fit: BoxFit.fitWidth,
                          )
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 10),
                        const Text('Price: 99RON'),
                        const SizedBox(width: 20),
                        ElevatedButton(
                            onPressed: (){},
                            child: const Text('Add to cart'))
                      ],
                    ),
                    const SizedBox(height: 10)
                  ],
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
              ),

              //row3
              Card(
                color: Colors.blue[200],
                  child: InkWell(
                    onTap: (){},
                    child: Container(),
                  )
              ),
              Card(
                color: Colors.blue[400],
                  child: InkWell(
                    onTap: (){},
                    child: Container(),
                  )
              ),
              Card(
                color: Colors.blue[600],
                  child: InkWell(
                    onTap: (){},
                    child: Container(),
                  )
              ),
              Card(
                color: Colors.blue[100],
                  child: InkWell(
                    onTap: (){},
                    child: Container(),
                  )
              ),
            ],
          ),
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 20)),
          SliverList(delegate: SliverChildListDelegate([
            Container(
              height: 400,
              color: Colors.pink,
              child: const Center(
                child: Text('This is the footer'),
              ),
            )
          ]))
        ],
      ),
    );
  }
}
