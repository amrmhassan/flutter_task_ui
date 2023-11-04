// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shared_code/shared_code.dart';
import 'package:ui_task/constants/colors.dart';
import 'package:ui_task/data/datasources/users_datasource.dart';
import 'package:ui_task/data/models/user_model.dart';
import 'package:reaya_shared_code/utils/global_utils.dart';
import 'package:ui_task/widgets/shimmer_widget.dart';

class UsersWidget extends StatefulWidget {
  const UsersWidget({
    super.key,
  });

  @override
  State<UsersWidget> createState() => _UsersWidgetState();
}

class _UsersWidgetState extends State<UsersWidget> {
  bool loading = false;
  final UsersDatasource _datasource = UsersDatasource();
  List<UserModel> users = [];

  void loadUsers() async {
    try {
      loading = true;
      setState(() {});
      users = await _datasource.getUsers();
      setState(() {});
    } catch (e) {
      GlobalUtils.errorSnackbar(e.toString());
    }
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    Future.delayed(Duration.zero).then((value) {
      loadUsers();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VSpace(factor: .5),
        Row(
          children: [
            Text(
              'Users View',
              style: h3TextStyle,
            ),
            const Spacer(),
            Text(
              'See all',
              style: h4TextStyleInactive.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
        const VSpace(factor: .5),
        Expanded(
          child: loading
              ? const LoadingUsers()
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    vertical: kVPad / 2,
                    horizontal: kVPad / 2,
                  ),
                  itemCount: users.length,
                  itemBuilder: (context, index) {
                    var model = users[index];
                    return Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kHPad / 2,
                        vertical: kVPad / 3,
                      ),
                      margin: const EdgeInsets.only(bottom: kVPad / 2),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(mediumBorderRadius),
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(1, 2),
                            color: Colors.grey.withOpacity(.1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('${model.id}.'),
                              const HSpace(factor: .5),
                              Text(
                                model.name,
                                style: h3TextStyle.copyWith(),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}

class LoadingUsers extends StatelessWidget {
  const LoadingUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        LoadingUserShimmerWidget(),
        VSpace(),
        LoadingUserShimmerWidget(),
        VSpace(),
        LoadingUserShimmerWidget(),
        VSpace(),
        LoadingUserShimmerWidget(),
        VSpace(),
        LoadingUserShimmerWidget(),
        VSpace(),
        LoadingUserShimmerWidget(),
        VSpace(),
        LoadingUserShimmerWidget(),
        VSpace(),
        LoadingUserShimmerWidget(),
        VSpace(),
      ],
    );
  }
}

class LoadingUserShimmerWidget extends StatelessWidget {
  const LoadingUserShimmerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ShimmerWidget(
          width: largeIconSize,
          height: largeIconSize,
          borderRadius: mediumBorderRadius,
          highlightColor: Color.fromARGB(255, 247, 221, 221),
          baseColor: AppColors.cardBackground,
        ),
        HSpace(),
        ShimmerWidget(
          baseColor: AppColors.cardBackground,
          width: largeIconSize * 3,
          height: largeIconSize / 2,
          borderRadius: mediumBorderRadius,
          highlightColor: Color.fromARGB(255, 247, 221, 221),
        ),
        Spacer(),
        ShimmerWidget(
          width: largeIconSize,
          height: largeIconSize,
          borderRadius: 1000,
          highlightColor: Color.fromARGB(255, 247, 221, 221),
          baseColor: AppColors.cardBackground,
        ),
      ],
    );
  }
}
