library splash_view;

import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'splash_view_model.dart';


// ignore: must_be_immutable
class SplashView extends StatelessWidget {
  static const routeName = '/splash';

  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => SplashViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(mobile: null,

          //Uncomment it if you've planned to support specifically for desktop and tablet
          //desktop: _SplashDesktop(viewModel),
          //tablet: _SplashTablet(viewModel),  
        );
      }
    );
  }
}