import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preproject/controllers/search_controller.dart';
import 'package:preproject/screens/search_screen.dart';
import 'package:preproject/services/root_service.dart';
import 'package:preproject/services/search/search_service.dart';

void main() {
  runApp(Root());
}

class Root extends StatefulWidget {
  const Root({Key? key}) : super(key: key);

  @override
  _RootState createState() => _RootState();
}

class _RootState extends State<Root> {

  @override
  void initState() {
    super.initState();

    initControllers();
  }

  initControllers(){
    final service = initService();
    Get.put(SearchController(service));
  }

  initService() {
    RootService rootService = RootService();
    return rootService;
  }

  List<GetPage> renderPages() {
    final services = initService();

    return [
      GetPage(
        name: '/',
        page: () => Home(),
        transition: Transition.noTransition,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'FlutterStudy',
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      getPages: renderPages(),
    );
  }
}