import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/src/core/resource/theme/sizes.dart';
import 'package:photo_editor/src/core/widget/center_text.dart';
import 'package:photo_editor/src/feature/permissions/bloc/permissions_bloc.dart';
import 'package:photo_editor/src/feature/permissions/widget/permission.dart';
import 'package:photo_editor/src/feature/permissions/widget/scope/permissions_scope.dart';

class PermissionsPage extends StatefulWidget {
  const PermissionsPage({Key? key}) : super(key: key);

  @override
  State<PermissionsPage> createState() => _PermissionsPageState();
}

class _PermissionsPageState extends State<PermissionsPage> {
  @override
  Widget build(BuildContext context) => PermissionsScope(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Permissions'),
          ),
          body: BlocBuilder<PermissionsBloc, PermissionsState>(
            builder: (context, state) => state.when(
              needPermissions: (persmissions) => ListView(
                children: [
                  const SizedBox(height: 20),
                  Visibility(
                    visible: persmissions.isNotEmpty,
                    child: Column(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          child: Text(
                            'For the application to work, you need to grant these permissions',
                            style: TextStyle(fontSize: 16),
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          color: const Color.fromARGB(255, 238, 238, 238),
                          child: ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) => PermissionWidget(
                              text: persmissions[index]
                                  .toString()
                                  .split('.')
                                  .last,
                              onTap: () =>
                                  BlocProvider.of<PermissionsBloc>(context).add(
                                GetPermissionEvent(
                                  permission: persmissions[index],
                                ),
                              ),
                            ),
                            separatorBuilder: (context, index) => const Divider(
                              height: 1,
                              color: Color.fromARGB(255, 202, 202, 202),
                            ),
                            itemCount: persmissions.length,
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
              loading: () => const Center(
                child: CupertinoActivityIndicator(
                  radius: 20,
                  color: Colors.black,
                ),
              ),
              loadSuccess: () => const CenterText(text: 'df'),
              loadFailure: (error) => CenterText(text: error),
            ),
          ),
        ),
      );
}
