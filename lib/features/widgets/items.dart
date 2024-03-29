import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:selim/features/widgets/cached_image.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import '../home/domain/entities/review_entity.dart';
import '../../cubits/product_cubit.dart';
import '../news/data/models/news/news_model.dart';

class SuggestCard extends StatelessWidget {
  const SuggestCard({
    Key? key,
    this.news,
    required this.height,
    this.textSize = false,
  }) : super(key: key);

  final Result? news;
  final double height;
  final bool textSize;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: SizedBox(
        height: height,
        child: CachedImage(
          widget: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: Text(
                news!.title,
                style: textSize
                    ? AppConstants.textWhiteS14W800
                    : AppConstants.textWhiteS12W800,
                softWrap: true,
              ),
            ),
          ),
          imageurl: news?.image ?? '',
        ),
      ),
    );
  }
}

class NewsImagesCard extends StatelessWidget {
  const NewsImagesCard({
    Key? key,
    required this.news,
  }) : super(key: key);

  final Result news;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CachedImage(
        imageurl: news.image,
        widget: Text(
          news.title,
          style: AppConstants.textWhiteS12W800,
          softWrap: true,
        ),
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
          SizedBox(
            height: context.height,
            child: CachedImage(
              imageurl: image,
              widget: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: Container(
                    constraints: const BoxConstraints(
                      maxWidth: 250.0,
                      minWidth: 50.0,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.colorBlack02,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        title,
                        style: AppConstants.textWhiteS16W800,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WorkImages extends StatefulWidget {
  const WorkImages({Key? key, required this.state}) : super(key: key);

  final ProductSuccess state;

  @override
  State<WorkImages> createState() => _WorkImagesState();
}

class _WorkImagesState extends State<WorkImages> {
  final _controller = PageController(viewportFraction: 0.8);
  int _selectedIndex = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      onPageChanged: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      itemCount: widget.state.product.length,
      itemBuilder: (context, index) {
        var scale = _selectedIndex == index ? 1.0 : 0.9;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TweenAnimationBuilder(
            duration: const Duration(milliseconds: 350),
            tween: Tween(begin: scale, end: scale),
            curve: Curves.ease,
            builder: (context, value, child) => Transform.scale(
              scale: value,
              child: child,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedImage(imageurl: widget.state.product[index].image),
            ),
          ),
        );
      },
    );
  }
}

class AdvantageCard extends StatelessWidget {
  const AdvantageCard({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width / 1.6,
      decoration: BoxDecoration(
          color: AppColors.colorWhite,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Color.fromARGB(95, 68, 68, 68), blurRadius: 0.5)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedImage(
              imageurl: image,
              widget: SizedBox(
                height: context.height * 0.09,
                width: context.height * 0.09,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              title,
              style: AppConstants.textBlackS14W600,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}

class ClientCard extends StatelessWidget {
  const ClientCard({Key? key, required this.review}) : super(key: key);
  final ReviewEntity review;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          width: context.width / 1.5,
          decoration: BoxDecoration(
              color: AppColors.colorWhite,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(95, 68, 68, 68), blurRadius: 0.5)
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: context.width / 5.5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${review.firstName} ${review.lastName}',
                            style: AppConstants.textBlackS14W600,
                            softWrap: true,
                          ),
                          SizedBox(
                            width: context.width * 0.4,
                            child: Text(
                              review.categoryName,
                              style: AppConstants.textBlackS14W300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Expanded(
                  child: Text(
                    review.text,
                    style: AppConstants.textBlackS12W500.copyWith(height: 1.5),
                    overflow: TextOverflow.visible,
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          left: 10,
          child: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 25,
            backgroundImage: CachedNetworkImageProvider(review.image),
          ),
        ),
      ],
    );
  }
}
