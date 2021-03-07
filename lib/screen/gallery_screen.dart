import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class GalleryScreen extends StatefulWidget {
  GalleryScreen({Key key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  var gallery = [
    "https://thestandard.co/wp-content/uploads/2020/02/25-1.jpg",
    "https://www.petcitiz.info/wp-content/uploads/2017/11/01-1.jpg",
    "https://pixnio.com/free-images/2017/09/26/2017-09-26-07-55-57-1100x688.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Center(
          child: Swiper(
            autoplay: true,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                gallery[index],
                fit: BoxFit.contain,
              );
            },
            itemCount: gallery.length,
            pagination: new SwiperPagination(),
            control: new SwiperControl(),
          ),
        ),
      ),
    );
  }
}
