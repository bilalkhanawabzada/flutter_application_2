library main_view;

import 'package:stacked/stacked.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'main_view_model.dart';


// ignore: must_be_immutable
class MainView extends StatelessWidget {
  static const routeName = '/main';

  const MainView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
      viewModelBuilder: () => MainViewModel(),
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(mobile: null,
       

          //Uncomment it if you've planned to support specifically for desktop and tablet
          //desktop: _MainDesktop(viewModel),
          //tablet: _MainTablet(viewModel),  
        );
      }
    );
  }
}