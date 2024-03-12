import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'FoodScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGridViewVisible = true;

  final List<String> images = [
    'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg',
    'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg',
    // Add more image URLs
  ];

  List<String> listViewItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    // Add more list items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 130,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage('assets/images/AppName.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Spacer(),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Color.fromARGB(255, 201, 237, 189),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.network(
                    'https://i.pinimg.com/564x/98/31/a8/9831a87a7f2d3ca32e64a15b1f20cbcf.jpg',
                    width: 32,
                    height: 32,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Color.fromARGB(255, 82, 232, 31),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.network(
                    'https://seeklogo.com/images/W/whatsapp-logo-F5E7ED09FB-seeklogo.com.png',
                    width: 35,
                    height: 35,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 16),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 20 / 15,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
              items: images.map((item) => _buildCarouselItem(item)).toList(),
            ),
            SizedBox(height: 0),
            Center(
              child: Container(
                padding: EdgeInsets.all(5),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Vikraya Online Services",
                      style: GoogleFonts.mateSc(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        letterSpacing: -1,
                        shadows: [
                          Shadow(
                            offset: Offset(3, 3),
                            blurRadius: 7,
                            color: Colors.black,
                          ),
                        ],
                        decoration: TextDecoration.none,
                        foreground: Paint()
                          ..shader = LinearGradient(
                            colors: [Colors.lightBlue, Colors.green],
                          ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 30.0)),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isGridViewVisible = !isGridViewVisible;
                        });
                      },
                      child: Icon(
                        Icons.category_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 0),
            isGridViewVisible
                ? Expanded(
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        AttractiveGridView(items: [
                          AttractiveGridItem(
                            image:
                                "https://img.freepik.com/premium-photo/photo-grilled-beef-burger-with-fries-cheese_920162-162.jpg",
                            // "https://c4.wallpaperflare.com/wallpaper/374/404/846/brown-bird-perching-during-daytime-wren-wren-wallpaper-preview.jpg",
                            title: "Food",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => FoodScreen(),
                                ),
                              );
                            },
                          ),
                          AttractiveGridItem(
                            image:
                                "https://media.istockphoto.com/id/461247467/photo/studio-portrait-of-military-general-in-formal-uniform.jpg?s=612x612&w=0&k=20&c=BLJQ3uK0J_EYGiguMR1nyD9OLL8YvLw2MBuV3wtX57I=",
                            title: 'Generals',
                            onTap: () {},
                          ),
                          AttractiveGridItem(
                            image:
                                "https://w0.peakpx.com/wallpaper/122/891/HD-wallpaper-glamour-lady-in-red-red-dress-woman-wine.jpg",
                            //"https://img.freepik.com/free-photo/beautiful-white-girl-with-long-wavy-hair-posing-with-excitement-indoor-portrait-optimistic-ginger-woman-fooling-around-pink_197531-11054.jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1699660800&semt=ais",
                            title: "Fashion",
                            onTap: () {},
                          ),
                          AttractiveGridItem(
                            image:
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXNT3Y59M0Xx1kVx0vIrB3L1LHf4_qIygRQQ&usqp=CAU",
                            // "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8ELXaFajPWdMA4ntHUp9NoQGKCdec5EK0kw&usqp=CAU",
                            title: "Services",
                            onTap: () {},
                          ),
                        ]),
                        Positioned(
                          top: 138,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isGridViewVisible = false;
                              });
                            },
                            child: Container(
                              width: 90,
                              height: 90,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [Colors.black, Colors.black],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 6,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: ClipOval(
                                child: Image.asset(
                                  'assets/images/AppLogo.png',
                                  width: 90,
                                  height: 80,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                : /*Expanded(
                    child: ListView.builder(
                      itemCount: listViewItems.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(listViewItems[index]),
                        );
                      },
                    ),
                    
                  ),*/
                Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0, horizontal: 16.0),
                          child: Card(
                            color: Colors.black,
                            elevation: 4.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: BorderSide(
                                  color: Colors.white38,
                                  width: 2.0), // White border
                            ),
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 16.0),
                              leading: Container(
                                width: 56.0,
                                height: 56.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                                child: Center(
                                  child: FlutterLogo(size: 32.0),
                                ),
                              ),
                              title: Text(
                                'Item ${index + 1}',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              ),
                              subtitle: Text(
                                'Item ${index + 1} subtitle',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey[600],
                                ),
                              ),
                              trailing: Icon(
                                Icons.access_alarm,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget _buildCarouselItem(String item) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.network(
          item,
          fit: BoxFit.cover,
          height: 200.0,
        ),
      ),
    );
  }
}

class AttractiveGridItem extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;

  const AttractiveGridItem({
    required this.image,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          border: Border.all(
            color: Colors.white38,
            width: 2,
          ),
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: Image.network(
                      image,
                      fit: BoxFit.cover,
                      height: 130,
                      width: double.infinity,
                    ),
                  ),
                ),
                Positioned.fill(
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black87],
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.2,
                      shadows: [
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 4,
                          color: Colors.grey.withOpacity(0.8),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AttractiveGridView extends StatelessWidget {
  final List<AttractiveGridItem> items;

  const AttractiveGridView({required this.items});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 25,
        mainAxisSpacing: 25,
      ),
      itemBuilder: (context, index) => items[index],
    );
  }
}
