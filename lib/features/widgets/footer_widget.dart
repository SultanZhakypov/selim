import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:selim/features/home/presentation/cubit/feedback_cubit.dart';
import 'package:selim/features/home/presentation/cubit/phone_number_cubit.dart';
import 'package:selim/features/home/presentation/cubit/schedule_cubit.dart';
import 'package:selim/features/widgets/app_shows.dart';
import 'package:selim/resources/app_constants.dart';
import 'package:selim/resources/extensions.dart';
import '../../injectable/init_injectable.dart';
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
  final _formKey = GlobalKey<FormState>();
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<PhoneNumberCubit>()..getPhoneNumber(),
        ),
        BlocProvider(
          create: (context) => sl<ScheduleCubit>()..getSchedule(),
        ),
        BlocProvider(
          create: (context) => sl<FeedbackCubit>(),
        ),
      ],
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 15),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: context.height / 14,
                  width: context.width,
                  child: CustomTextField(
                    controller: _controller,
                    title: 'имя',
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
                child: SizedBox(
                  height: context.height / 14,
                  width: context.width,
                  child: CustomTextField(
                    controller: _controller2,
                    title: 'телефон',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: context.height / 5,
                  width: context.width,
                  child: CustomTextField(
                    controller: _controller3,
                    title: 'сообщение',
                    maxLines: 10,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              BlocConsumer<FeedbackCubit, FeedBackState>(
                listener: (context, state) {
                  if (state is FeedBackSuccess) {
                    AppShows.showSuccessDialog(context);
                    _controller.clear();
                    _controller2.clear();
                    _controller3.clear();
                  }
                  if (state is FeedBackError) {
                    AppShows.showSnackBar(context, state.error);
                  }
                },
                builder: (context, state) {
                  if (state is FeedbackLoading) {
                    return LoadingAnimationWidget.horizontalRotatingDots(
                        color: Colors.black, size: 50);
                  }
                  return SizedBox(
                    height: context.height / 15,
                    width: context.width / 1.5,
                    child: AppButton(
                      onPress: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<FeedbackCubit>().postFeedBack(
                                name: _controller.text,
                                phone: _controller2.text,
                                message: _controller3.text,
                              );
                        }
                      },
                      isVisibleIcon: false,
                      title: 'оставить заявку',
                    ),
                  );
                },
              ),
              SizedBox(height: context.height * 0.15),
              DecoratedBox(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Images.footerimage),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(Svgs.selimBluee),
                          Column(
                            children: [
                              const Text(
                                'РЕЖИМ РАБОТЫ',
                                style: AppConstants.textBlackS12W500,
                              ),
                              BlocBuilder<ScheduleCubit, ScheduleState>(
                                builder: (context, state) {
                                  if (state is ScheduleError) {
                                    return SizedBox(
                                        width: context.width * 0.3,
                                        child: Text(state.error));
                                  }
                                  if (state is ScheduleLoading) {
                                    return LoadingAnimationWidget
                                        .horizontalRotatingDots(
                                      color: Colors.black,
                                      size: 50,
                                    );
                                  }
                                  if (state is ScheduleSuccess) {
                                    return Column(
                                      children: List.generate(
                                        state.schedule.length,
                                        (index) => Text(
                                          '${state.schedule[index].day} ${state.schedule[index].startTime} - ${state.schedule[index].endTime}',
                                          style: AppConstants.textBlackS12W500,
                                        ),
                                      ),
                                    );
                                  }
                                  return const SizedBox.shrink();
                                },
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'TЕЛЕФОН',
                                style: AppConstants.textBlackS12W500,
                              ),
                              BlocBuilder<PhoneNumberCubit, PhoneNumberState>(
                                builder: (context, state) {
                                  if (state is PhoneNumberError) {
                                    return SizedBox(
                                        width: context.width * 0.3,
                                        child: Text(state.error));
                                  }
                                  if (state is PhoneNumberLoading) {
                                    return LoadingAnimationWidget
                                        .horizontalRotatingDots(
                                      color: Colors.black,
                                      size: 50,
                                    );
                                  }
                                  if (state is PhoneNumberSuccess) {
                                    return SizedBox(
                                      width: context.width * 0.3,
                                      child: Column(
                                        children: List.generate(
                                          state.number.length,
                                          (index) => Text(
                                            state.number[index].number,
                                            style:
                                                AppConstants.textBlackS12W500,
                                          ),
                                        ),
                                      ),
                                    );
                                  }
                                  return const SizedBox.shrink();
                                },
                              ),
                            ],
                          ),
                          InkWell(
                            onTap: () async => LaunchURLS.open2gis(context),
                            child: Container(
                              height: context.height * 0.15,
                              width: context.height / 6,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(Images.map),
                                  fit: BoxFit.fill,
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
                                      onTap: () async =>
                                          LaunchURLS.openInsta(context),
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
                              children: const [
                                Text(
                                  'Главная',
                                  style: AppConstants.textBlackS12W500,
                                ),
                                Text(
                                  'О нас',
                                  style: AppConstants.textBlackS12W500,
                                ),
                                Text(
                                  'Услуги',
                                  style: AppConstants.textBlackS12W500,
                                ),
                              ],
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Работы',
                                style: AppConstants.textBlackS12W500,
                              ),
                              Text(
                                'Отзывы',
                                style: AppConstants.textBlackS12W500,
                              ),
                              Text(
                                'Новости',
                                style: AppConstants.textBlackS12W500,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
