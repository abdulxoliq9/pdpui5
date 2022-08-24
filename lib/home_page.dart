import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
static final String id = 'home_page';
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/family.webp'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.4),
                    ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text('Best Hotels Ever',
                      style: TextStyle(color: Colors.white,
                      fontWeight:FontWeight.bold,fontSize: 30),
                      textAlign: TextAlign.center,),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,
                          color: Colors.grey[500],size: 18,),
                          hintText: 'Search for hotels...',
                          hintStyle: TextStyle(color: Colors.grey[500],
                          fontSize: 15)
                        ),
                      ),
                    ),
                    SizedBox(height: 30,)
                  ],
                )
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Business Hotels',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[800],fontSize: 20
                  ),),
                  SizedBox(height: 20,),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image: 'assets/images/hotel1.webp',title: 'Hotel 1'),
                        makeItem(image: 'assets/images/hotel2.webp',title: 'Hotel 2'),
                        makeItem(image: 'assets/images/hotel3.webp',title: 'Hotel 3'),
                        makeItem(image: 'assets/images/hotel4.webp',title: 'Hotel 4'),
                        makeItem(image: 'assets/images/hotel5.webp',title: 'Hotel 5'),
                      ],
                    ),
                  ),
              SizedBox(height: 20,),
              Text('Airport Hotels',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],fontSize: 20
              ),),
              SizedBox(height: 20,),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    makeItem(image: 'assets/images/hotel4.webp',title: 'Hotel 1'),
                    makeItem(image: 'assets/images/hotel6.webp',title: 'Hotel 2'),
                    makeItem(image: 'assets/images/hotel2.webp',title: 'Hotel 3'),
                    makeItem(image: 'assets/images/hotel1.webp',title: 'Hotel 4'),
                    makeItem(image: 'assets/images/hotel3.webp',title: 'Hotel 5'),
                  ],
                ),
              ),

                ],
              ),
            ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Resort Hotels',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],fontSize: 20
          ),),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              makeItem(image: 'assets/images/hotel6.webp',title: 'Hotel 1'),
              makeItem(image: 'assets/images/hotel7.webp',title: 'Hotel 2'),
              makeItem(image: 'assets/images/hotel4.webp',title: 'Hotel 3'),
              makeItem(image: 'assets/images/hotel1.webp',title: 'Hotel 4'),
              makeItem(image: 'assets/images/hotel5.webp',title: 'Hotel 5'),
            ],
          ),),
          ],
        ),
      ),
    );
  }
  Widget makeItem({image,title}){
    return AspectRatio(aspectRatio: 1.8/1.7,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        )
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.2),
            ]
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(title,style: TextStyle(
              color: Colors.white,fontSize: 20,
            ),),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Icon(Icons.favorite,color: Colors.red,),
            ),
          ],
        ),
      ),
    ),);
  }
}
