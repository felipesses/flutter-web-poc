import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_poc/presentation/controllers/users/users_controller.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/spinner/spinner.dart';
import 'package:flutter_web_poc/presentation/widgets/atoms/text/app_text.dart';
import 'package:flutter_web_poc/presentation/widgets/organisms/user_list/user_list.dart';
import 'package:flutter_web_poc/presentation/widgets/templates/layout/layout.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<UsersController>();

  @override
  void initState() {
    super.initState();
    controller.fetchAllUsers();
    controller.fetchAllPhotos();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutWidget(
      hasAppBar: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: AppText(
              'json placeholder list',
              fontFamily: 'Itau Display',
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 16),
          AnimatedBuilder(
            animation: controller,
            builder: (context, widget) {
              return controller.users == null
                  ? const AppSpinner()
                  : UsersList(
                      usersList: controller.users!,
                      photosList: controller.photos!,
                    );
            },
          ),
        ],
      ),
    );
  }
}
