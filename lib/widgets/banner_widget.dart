import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({super.key});

  @override
 // ignore: library_private_types_in_public_api
 _BannerWidgetState createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  final PageController _controller = PageController();
  final List<String> _images = [
    "assets/images/medecine_image.png",
    "assets/images/medecine_image.png",
    "assets/images/medecine_image.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: PageView.builder(
            controller: _controller,
            itemCount: _images.length,
            itemBuilder: (context, index) {
              return Image.asset(
                _images[index],
                fit: BoxFit.cover,
                width: double.infinity,
              );
            },
          ),
        ),

        const SizedBox(height: 8),

        SmoothPageIndicator(
          controller: _controller,
          count: _images.length,
          effect: WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: Color(0xff31b682),
            dotColor: Colors.grey.shade400,
          ),
        ),
      ],
    );
  }
}
