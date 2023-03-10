import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';

import '../../resources/resources.dart';
import 'custom_textfield.dart';
import '../home/presentation/widgets/buttons.dart';
import 'launch_url.dart';

class FooterWidget extends StatefulWidget {
  const FooterWidget({super.key});

  @override
  State<FooterWidget> createState() => _FooterWidgetState();
}

class _FooterWidgetState extends State<FooterWidget> {
  late TextEditingController _controller;
  late TextEditingController _controller2;
  late TextEditingController _controller3;
  @override
  void initState() {
    _controller = TextEditingController();
    _controller2 = TextEditingController();
    _controller3 = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _controller2.dispose();
    _controller3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        children: [
          const SizedBox(height: 32),
          const Center(
            child: Text(
              'ОСТАЛИСЬ ВОПРОСЫ?',
              style: AppConstants.textBlackS16W700,
            ),
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: context.height / 15,
            width: context.width,
            child: CustomTextField(
              controller: _controller,
              title: 'имя',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: SizedBox(
              height: context.height / 15,
              width: context.width,
              child: CustomTextField(
                controller: _controller2,
                title: 'телефон',
              ),
            ),
          ),
          SizedBox(
            height: context.height / 5,
            width: context.width,
            child: CustomTextField(
              controller: _controller3,
              title: 'сообщение',
              maxLines: 10,
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: context.height / 15,
            width: context.width / 1.5,
            child: AppButton(
              onPress: () {},
              isVisibleIcon: false,
              title: 'оставить заявку',
            ),
          ),
          SizedBox(height: context.height / 13),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(Svgs.selimBluee),
                  Column(
                    children: const [
                      Text(
                        'РЕЖИМ РАБОТЫ',
                        style: AppConstants.textBlackS12W500,
                      ),
                      Text(
                        'Пн-Пт 8:30–18:30',
                        style: AppConstants.textBlackS12W500,
                      ),
                      Text(
                        'Суббота 8:30–14:00',
                        style: AppConstants.textBlackS12W500,
                      ),
                      Text(
                        'TЕЛЕФОН',
                        style: AppConstants.textBlackS12W500,
                      ),
                      Text(
                        '+996 (552) 57 07 55',
                        style: AppConstants.textBlackS12W500,
                      ),
                      Text(
                        '+996 (500) 88 80 51',
                        style: AppConstants.textBlackS12W500,
                      ),
                      Text(
                        '+996 (772) 32 76 76',
                        style: AppConstants.textBlackS12W500,
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () async => LaunchURLS.open2gis(context),
                    child: Container(
                      height: context.height / 8,
                      width: context.height / 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage(Images.gis),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Социальные \nсети',
                          style: AppConstants.textBlackS12W500,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          InkWell(
                              onTap: () async => LaunchURLS.openInsta(context),
                              child: SvgPicture.asset(Svgs.instagram)),
                          const SizedBox(width: 5),
                          InkWell(
                              onTap: () async =>
                                  LaunchURLS.openWhatsapp(context),
                              child: SvgPicture.asset(Svgs.whatsapp)),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Главная',
                            style: AppConstants.textBlackS12W500,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'О нас',
                            style: AppConstants.textBlackS12W500,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            'Услуги',
                            style: AppConstants.textBlackS12W500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Работы',
                          style: AppConstants.textBlackS12W500,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Отзывы',
                          style: AppConstants.textBlackS12W500,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          'Новости',
                          style: AppConstants.textBlackS12W500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
