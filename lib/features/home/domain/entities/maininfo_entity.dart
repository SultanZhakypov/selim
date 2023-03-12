import '../../data/models/main_info_model.dart';

class MainInfoEntity {
  final String title;
  final String subtitle;
  final String image;
  final List<PhoneNumber> phoneNumber;
  final List<SocialMedia> socialMedia;
  final List<Schedule> schedule;
  MainInfoEntity({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.phoneNumber,
    required this.socialMedia,
    required this.schedule,
  });
}
