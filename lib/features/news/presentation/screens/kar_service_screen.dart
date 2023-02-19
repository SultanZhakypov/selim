import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import 'package:selim/resources/resources.dart';

class KarServiceScreen extends StatelessWidget {
  const KarServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: context.height / 4,
        width: context.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Images.justImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(Svgs.selimG),
                  SvgPicture.asset(Svgs.menu),
                ],
              ),
              const SizedBox(height: 18),
              const Text(
                'ПРОМЫШЛЕННЫЕ \n СЕКЦИОННЫЕ ВОРОТА',
                style: AppConstants.textWhiteS16W800,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
