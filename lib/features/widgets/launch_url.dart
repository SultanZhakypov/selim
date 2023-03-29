import 'dart:io';

import 'package:flutter/material.dart';
import 'package:selim/features/widgets/app_shows.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchURLS {
  static Future<void> launchPhone(
      BuildContext context, String phoneNumber) async {
    await launchUrl(Uri.parse('tel://$phoneNumber'));
  }

  static Future<void> launchURLS(BuildContext context,
      {required String url,
      required String showMessageIOS,
      String? urlForMarket,
      String? urlForIOS}) async {
    if (Platform.isIOS) {
      if (await canLaunchUrl(Uri.parse(urlForIOS ?? ''))) {
        await launchUrl(
          Uri.parse(urlForIOS ?? ''),
        );
      } else {
        if (context.mounted) {
          AppShows.showSnackBar(context, showMessageIOS);
        }
      }
    } else {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        await launchUrl(Uri.parse(urlForMarket ?? ''));
      }
    }
  }

  static Future openWhatsapp(BuildContext context) async {
    return await launchURLS(
      context,
      url: "whatsapp://send?phone=996500888051&text=",
      urlForIOS: "https://wa.me/996500888051?text=",
      showMessageIOS: 'Ватсап не установлен',
      urlForMarket: 'market://details?id=com.whatsapp',
    );
  }

  static Future openInsta(BuildContext context) async {
    return await launchURLS(
      context,
      url: "instagram://user?username=selimtrade",
      showMessageIOS: 'Инстаграм не установлен',
      urlForMarket: 'market://details?id=com.instagram.android',
    );
  }

  static Future openMAP(BuildContext context,String mapUrl) async {
    return await launchURLS(
      context,
      url: mapUrl,
      showMessageIOS: 'Google Maps не установлен',
    );
  }
}
