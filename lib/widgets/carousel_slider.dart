import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:teentime/colors.dart';

final CarouselController _controller = CarouselController();

class ImageSlider extends StatefulWidget {
  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int activeIndex = 0;
  List<String> images = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            carouselController: _controller,
            options: CarouselOptions(
              aspectRatio: 41 / 25,
              viewportFraction: 1,
              autoPlay: true,
              enableInfiniteScroll: false,
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
            items: images
                .map((i) => Builder(
                      builder: (BuildContext context) {
                        return Stack(
                          children: [
                            GestureDetector(
                              behavior: HitTestBehavior.translucent,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SizedBox(
                                  width: 328.w,
                                  height: 200.h,
                                  child: Image.asset(
                                    i,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              width: 67.w,
                              height: 35.h,
                              right: 0.w,
                              bottom: 39.h,
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: AppColors.dark10.withOpacity(0.5),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0),
                                    ),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 12.0, vertical: 6.0),
                                  child: Center(
                                    child: Text(
                                      '${activeIndex + 1} / ${images.length}',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14.sp),
                                    ),
                                  )),
                            ),
                          ],
                        );
                      },
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}
