import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preproject/controllers/search_controller.dart';
import 'package:preproject/models/general_response_model.dart';
import 'package:preproject/utils/debounce.dart';
import 'package:substring_highlight/substring_highlight.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textEditingController = TextEditingController();
  ListResponseModelData? result;
  final SearchController searchController = Get.find();

  Debounce debounce = Debounce(Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: GetBuilder<SearchController>(builder: (_) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Row(
                    children: [
                      InkWell(child: Icon(Icons.arrow_back),
                        onTap: () {
                          searchController.changeIsSelect(false);
                          textEditingController.clear();
                        } ,),
                      SizedBox(width: 15),
                      Expanded(
                          child: TextField(
                        controller: textEditingController,
                        onChanged: (text) {
                          debounce.run(() {
                            search(text);
                          });
                        },
                      )),
                    ],
                  ),
                ),
                !searchController.isSelected
                    ? searchListScreen()
                    : detailScreen()
              ],
            );
          })),
    );
  }

  detailScreen() {
    return Text(textEditingController.text);
  }

  searchListScreen() {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        itemCount: searchController.searchResults.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              searchController.changeIsSelect(true);
              textEditingController.text =
                  searchController.searchResults[index].name!;
            },
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child:
                SubstringHighlight(
                  textStyle: TextStyle(fontSize: 15,color: Colors.black),
                  text: searchController.searchResults[index].name!,
                  textStyleHighlight: TextStyle(fontSize: 15,color: Colors.green),
                  term: textEditingController.text,
                ),
            ),
          );
        },
      ),
    );
  }

  search(String text) async {
    await searchController.search(name: text);
  }
}
