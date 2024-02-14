import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  final List<String> images = [
    'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg',
    'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg',
    // Add more image URLs
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
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://cdn0.iconfinder.com/data/icons/most-usable-logos/120/Amazon-512.png',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 2),
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
            Spacer(),
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
                    'https://seeklogo.com/images/W/whatsapp-logo-F5E7ED09FB-seeklogo.com.png', // Replace this URL with your actual network image URL
                    width: 35, // Adjust width as needed
                    height: 35, // Adjust height as needed
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Color.fromARGB(255, 201, 237, 189),
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Image.network(
                    'https://i.pinimg.com/564x/98/31/a8/9831a87a7f2d3ca32e64a15b1f20cbcf.jpg', // Replace this URL with your actual network image URL
                    width: 32, // Adjust width as needed
                    height: 32, // Adjust height as needed
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
                width: double.infinity, // Set your desired width
                height: 80, // Set your desired height
                decoration: BoxDecoration(
                  color: Colors.black, // Set your desired background color
                  borderRadius: BorderRadius.circular(
                      10.0), // Set your desired border radius
                ),
                child: Center(
                  child: Image.network(
                    'https://rdwgroup.com/wp-content/uploads/2013/08/Amazon-800x450-1.jpg', // Replace with your network image URL
                    width: 250, // Set your desired image width
                    height: 100, // Set your desired image height
                    fit: BoxFit
                        .contain, // Set the BoxFit property as per your requirement
                  ),
                ),
              ),
            ),
            SizedBox(height: 0),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  AttractiveGridView(items: [
                    AttractiveGridItem(
                      image:
                          "https://c4.wallpaperflare.com/wallpaper/374/404/846/brown-bird-perching-during-daytime-wren-wren-wallpaper-preview.jpg",
                      title: "Food",
                      onTap: () {},
                    ),
                    AttractiveGridItem(
                      image:
                          "https://media.istockphoto.com/id/461247467/photo/studio-portrait-of-military-general-in-formal-uniform.jpg?s=612x612&w=0&k=20&c=BLJQ3uK0J_EYGiguMR1nyD9OLL8YvLw2MBuV3wtX57I=",
                      title: 'Living Generals',
                      onTap: () {},
                    ),
                    AttractiveGridItem(
                      image:
                          "https://img.freepik.com/free-photo/beautiful-white-girl-with-long-wavy-hair-posing-with-excitement-indoor-portrait-optimistic-ginger-woman-fooling-around-pink_197531-11054.jpg?size=626&ext=jpg&ga=GA1.1.1826414947.1699660800&semt=ais",
                      title: "Fashion",
                      onTap: () {},
                    ),
                    AttractiveGridItem(
                      image:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8ELXaFajPWdMA4ntHUp9NoQGKCdec5EK0kw&usqp=CAU",
                      title: "Services",
                      onTap: () {},
                    ),
                  ]),
                  Positioned(
                    top: 138,
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
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: Image.network(
                          'https://i.pinimg.com/originals/19/32/a7/1932a790441b8d2fe5fdb82e93679227.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
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
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Image.network(
                image,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
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
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                child: Center(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 22,
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
            ),
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
