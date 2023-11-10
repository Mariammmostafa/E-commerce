import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
class Home extends StatelessWidget {
  static const String routName = "Home";
  Home({super.key});
  List<cutomimagelist> ss = [
    cutomimagelist(
      image: "assets/image/Ellipse1.png",
      text: "Women's\nfashion",
    ),
    cutomimagelist(
      image: "assets/image/Ellipse 2.png",
      text: "men's\nfashion",
    ),
    cutomimagelist(
      image: "assets/image/Ellipse 3.png",
      text: "Laptops&\nElectronics",
    ),
    cutomimagelist(
      image: "assets/image/Ellipse 4.png",
      text: "Baby&Toys",
    ),
    cutomimagelist(
      image: "assets/image/Ellipse 5.png",
      text: "Beauty",
    ),
    cutomimagelist(
      image: "assets/image/Ellipse 6.png",
      text: "Headphones",
    ),
    cutomimagelist(
      image: "assets/image/Ellipse 7.png",
      text: "Skincare",
    ),
    cutomimagelist(
      image: "assets/image/Ellipse 8.png",
      text: "Cameras",
    ),
  cutomimagelist(
  image: "assets/image/Frame 9.png",
  text: "washing machine",

  ),
  cutomimagelist(
  image: "assets/image/Frame 11.png",
  text: "New Cooker",
  ),
  cutomimagelist(
  image: "assets/image/Frame 10.png",
  text: "Steam Iron",
  ),
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/image/route.png"),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    child: Expanded(
                      child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search,color: Color(0xff06004F),),
                              hintText: " what do you search for?",
                              hintStyle: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 14,
                                  color: Color(0xff06004F)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                              ))),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset("assets/image/🦆 icon _shopping cart_.png"),
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              Carousel(
                indicatorBarColor: Colors.white,
                activateIndicatorColor: Color(0xff004182),
                items: [
                  Container(
                    child: Image.asset("assets/image/image1.png",
                        fit: BoxFit.fill),
                  ),
                  Container(
                    child: Image.asset("assets/image/image2.png",
                        fit: BoxFit.fill),
                  ),
                  Container(
                    child: Image.asset("assets/image/image3.png",
                        fit: BoxFit.fill),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        fontFamily: "assets/fonts/Poppins-Medium.ttf",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff06004F),
                      ),
                    ),
                  ),
                  Text(
                    "view all",
                    style: TextStyle(
                      fontFamily: "assets/fonts/Poppins-Medium.ttf",
                      fontSize: 12,
                      color: Color(0xff06004F),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            Expanded(
            child: GridView.builder(

                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: ss.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 10,
                      childAspectRatio:
                      MediaQuery.of(context).size.height / 1300,
                    ),
                    itemBuilder: (context, index) => cutomimagelist(
                        image: ss[index].image, text: ss[index].text)),

            ),


            ],

          ),

        ),

      ),


      bottomNavigationBar: ClipRRect (
        borderRadius:BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0)),




        child :

        BottomNavigationBar(


          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF004182,

          ),

          unselectedItemColor: Colors.white,iconSize: 40,

          selectedIconTheme: const IconThemeData(color: Color(0xFF06004F),size:40),

          selectedItemColor:  Colors.white,

          items: const [
            BottomNavigationBarItem(

              icon: ImageIcon(AssetImage("assets/image/homeicon.png")),label: "home",
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/image/icon.png")),label: "categories",
            ),

            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/image/favorite.png")), label: "favorite"
            ),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/image/user.png")), label: "user"
            )
          ],
        ),
      ),
    );


  }
}

class customimage extends StatelessWidget {
  String? image;
  customimage({required this.image});
  Widget build(BuildContext context) {
    var mediaq = MediaQuery.of(context).size;
    return Image.asset(
      "$image",
      width: mediaq.width,
    );
  }
}

class cutomimagelist extends StatelessWidget {
  final String image;
  final String text;
  cutomimagelist({required this.image, required this.text});
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("$image"),
        const SizedBox(
          height: 10,
        ),
        Text(
          "$text",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xff06004F),
          ),
        ),
      ],
    );
  }
}