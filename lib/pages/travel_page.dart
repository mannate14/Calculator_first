import 'package:calculator_first/widgets/hotel_tile.dart';
import 'package:flutter/material.dart';

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Stack(
      children: [
        _background(context),
        _locationList(context),
      ],
    );
  }

  Widget _background(BuildContext context) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.50,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://www.holidaymonk.com/wp-content/uploads/2023/05/Travel-Guide-to-Vietnam.jpg"),
               fit: BoxFit.fill),
      ),
      child: Padding(
        padding:
        EdgeInsets.only(bottom: MediaQuery.of(context).size.height*0.1,),
        child: const Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Thailand Islands",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "11th September-15th September",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ),
    );
  }
  Widget _locationList(BuildContext context){
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height*0.58,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  15,
                ),
                topLeft: Radius.circular(
                    15,
                )
            )
        ),
        child: ListView(
          children: const [
            HotelTile(
                name: "Hilton Thai",
                image:
                    "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/21/e5/e5/6b/hilton-hua-hin-resort.jpg?w=700&h=-1&s=1",
                    price: 400,
                rating: 4.3,
            ),
            HotelTile(
              name: "Vivanta By Taj",
              image:
                  "https://cf.bstatic.com/xdata/images/hotel/max1024x768/60109115.jpg?k=2b0aeb995a20d0c455bd5ab42256cbf2469d68a24bf3803a86105e49ac10ef4d&o=&hp=1",
              price: 450,
              rating: 4.7,
            ),
            HotelTile(
              name: "Four Seasons",
              image:
                  "https://www.momondo.in/himg/87/41/9b/ice-415319-100973255-620733.jpg",
                  price: 145,
              rating: 3.0,
            ),
            HotelTile(
              name: "Raddison Blue",
              image:
                  "https://cf.bstatic.com/xdata/images/hotel/max1024x768/492711883.jpg?k=9d96803f7c1d8f97985ff2003bab707b87e996380b420cdc7fb74f4d7642ae00&o=&hp=1",
                  price: 500,
              rating: 5,
            )
          ],
        ),
      ),
    );
  }
}

