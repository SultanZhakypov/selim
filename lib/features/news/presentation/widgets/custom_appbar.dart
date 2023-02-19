import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/resources.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(Svgs.selimBlacck),
              SvgPicture.asset(Svgs.menuBlack),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'НАШИ УСЛУГИ',
              style: AppConstants.textBlackS16W700,
            ),
          ),
          const Text(
            'Наши сотрудники прошли сертифицированные тренинги в Учебных центрах ГК DoorHan в г. Москва, г. Алматы, г. Астаны а так же успешно сдали экзамены и являются обладателями сертификатов по направлениям «Воротные системы, ролл ставни, ролл ворота, автоматические системы», «Монтаж автоматики».',
            style: AppConstants.textBlackS14W300,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
