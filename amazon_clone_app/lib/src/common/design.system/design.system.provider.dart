import 'package:amazon_clone_app/src/common/design.system/design.system.cubit.dart';
import 'package:amazon_clone_app/src/common/design.system/theme.data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DesignSystemProvider extends StatelessWidget {
  final Widget Function(BuildContext context, DesignSystemCubitState state)
      builder;
  const DesignSystemProvider({
    Key? key,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DesignSystemCubit>(
      create: (context) => DesignSystemCubit(),
      child: BlocBuilder<DesignSystemCubit, DesignSystemCubitState>(
        builder: (context, state) {
          return DesignSystemInherited(
            data: state.data,
            child: builder(context, state),
          );
        },
      ),
    );
  }
}

class DesignSystemInherited extends InheritedWidget {
  final DesignThemesData data;
  const DesignSystemInherited({
    Key? key,
    required Widget child,
    required this.data,
  }) : super(key: key, child: child);

  static DesignSystemInherited of(BuildContext context) {
    final widget =
        context.dependOnInheritedWidgetOfExactType<DesignSystemInherited>();

    return widget!;
  }

  @override
  bool updateShouldNotify(covariant DesignSystemInherited oldWidget) =>
      data != oldWidget.data;
}

extension DesignSystemInheritedExtension on BuildContext {
  DesignThemesData get designThemesData => DesignSystemInherited.of(this).data;
}
