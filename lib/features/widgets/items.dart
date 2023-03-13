import 'dart:math';
import 'package:flutter/material.dart';
import 'package:selim/features/widgets/cached_image.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import '../../resources/resources.dart';

class SuggestCard extends StatelessWidget {
  const SuggestCard({
    Key? key,
    required this.textOnCenter,
    required this.noText,
  }) : super(key: key);

  final bool textOnCenter;
  final bool noText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.3,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(Images.justImage),
          fit: BoxFit.fill,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: noText
          ? const SizedBox.shrink()
          : textOnCenter
              ? const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Center(
                    child: Text(
                      'РАСШИРЕНИЕ ДИЗАЙНА ВОРОТ СТАДНАРТНОЙ СЕРИИ RSD01SC BIW',
                      style: AppConstants.textWhiteS10W800,
                      softWrap: true,
                    ),
                  ),
                )
              : Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 6, left: 6),
                    child: Container(
                      height: 32,
                      width: context.width / 3,
                      decoration: BoxDecoration(
                        color: AppColors.colorBlack02,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                          child: Text(
                        'Автоматика',
                        style: AppConstants.textWhiteS16W800,
                      )),
                    ),
                  ),
                ),
    );
  }
}

class WorkCard extends StatefulWidget {
  const WorkCard({
    Key? key,
  }) : super(key: key);

  @override
  State<WorkCard> createState() => _WorkCardState();
}

class _WorkCardState extends State<WorkCard> {
  PageController? pageController;

  double viewportFraction = 0.8;

  double? pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController =
        PageController(initialPage: 0, viewportFraction: viewportFraction)
          ..addListener(() {
            setState(() {
              pageOffset = pageController!.page;
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: 3,
      itemBuilder: (context, index) {
        double scale = max(viewportFraction,
            (1 - (pageOffset! - index).abs()) + viewportFraction);

        double angle = (pageOffset! - index).abs();

        if (angle > 0.5) {
          angle = 1 - angle;
        }
        return Padding(
          padding: EdgeInsets.only(
            right: 10,
            left: 20,
            top: 50 - scale * 25,
            bottom: 50,
          ),
          child: Transform(
            transform: Matrix4.identity()
              ..setEntry(3, 2, 0.001)
              ..rotateY(angle),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                Images.usWork,
                fit: BoxFit.cover,
              ),
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
            BoxShadow(color: Color.fromARGB(95, 151, 149, 149), blurRadius: 0.5)
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedImage(imageUrl: image),
          const SizedBox(height: 5),
          Text(
            title,
            style: AppConstants.textBlackS14W600,
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ],
      ),
    );
  }
}

class ClientCard extends StatelessWidget {
  const ClientCard({
    Key? key,
  }) : super(key: key);

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
                    color: Color.fromARGB(95, 151, 149, 149), blurRadius: 0.5)
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
                        children: const [
                          Text(
                            'Улан Султанов',
                            style: AppConstants.textBlackS14W600,
                          ),
                          Text(
                            'ворота атоматические',
                            style: AppConstants.textBlackS14W300,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Expanded(
                  child: Text(
                    'Ворота стоят уже более двух лет. За это время с ними не было никаких проблем. Спасибо, Selim Trade!',
                    style: AppConstants.textBlackS12W500.copyWith(height: 1.5),
                    overflow: TextOverflow.visible,
                  ),
                )
              ],
            ),
          ),
        ),
        const Positioned(
          left: 10,
          child: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(Images.circleimage),
          ),
        ),
      ],
    );
  }
}
