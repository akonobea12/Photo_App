import 'package:flutter/material.dart';

void main() {
  runApp(PhotoApp());
}

class PhotoApp extends StatelessWidget {
  //const PhotoApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Photo App',
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //media query enables the content to fill the screen fully nomater which device
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.all(75),
          child: Text(
            'A New World of Photography ',
            style: TextStyle(fontSize: 50, color: Colors.white),
          ),
        ), //for the image to fit the whole screen
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://images.unsplash.com/photo-1586348943529-beaae6c28db9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1430&q=80')),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ImageViews();
          }));
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.keyboard_arrow_right,
          color: Colors.black,
        ),
      ),
    );
  }
}

class ImageViews extends StatelessWidget {
  const ImageViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      //  body:
      // Padding(padding:EdgeInsets.all(50),
      // child:
      // Text('Explore' ,style: TextStyle(fontSize:20),),),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.orange,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1537824598505-99ee03483384?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
            ),
            // SizedBox(
            //  width: 320,
            //  height: 10,
            // ),
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ],
        ),
      ), //listview helps you to scroll
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Explore',
                style: TextStyle(fontSize: 20),
              ),
              Icon(Icons.keyboard_arrow_right)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                //to customize the shape o an image
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1459478309853-2c33a60058e7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Dorcas',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1462275646964-a0e3386b89fa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Kutunse'),
                            ],
                          ),
                          Icon(
                            Icons.bookmark,
                            color: Colors.orange,
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          // SizedBox(
          //  height: 10,
          // ),

          Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                //to customize the shape o an image
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1499002238440-d264edd596ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rebecca',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1508138142660-302e69e74271?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Lapaz'),
                            ],
                          ),
                          Icon(
                            Icons.bookmark,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

                    Card(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                //to customize the shape o an image
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      'https://images.unsplash.com/photo-1559666126-84f389727b9a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=877&q=80',
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                    'Kuku',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Adenta'),
                            ],
                          ),
                          Icon(
                            Icons.bookmark,
                            color: Colors.orange,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
           BottomNavigationBarItem(icon: Icon(Icons.menu),label: 'menu'),
            BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
        ]
        
        ),
    );
  }
}
