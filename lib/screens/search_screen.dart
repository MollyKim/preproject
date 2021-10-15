import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:preproject/controllers/search_controller.dart';
import 'package:preproject/utils/debounce.dart';
import 'package:substring_highlight/substring_highlight.dart';
import 'package:cached_network_image/cached_network_image.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textEditingController = TextEditingController();
  final SearchController searchController = Get.find();

  Debounce debounce = Debounce(Duration(milliseconds: 500));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(child: Icon(Icons.arrow_back,color: Colors.black,),
            onTap: () {
          searchController.changeIsSelect(false);
          textEditingController.clear();
        }),
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: TextField(
          controller: textEditingController,
          onChanged: (text) {
            debounce.run(() {
              search(text);
            });
          },
        ),
      ),
      body: GetBuilder<SearchController>(builder: (_) {
        return !searchController.isSelected ? searchResultBody() : searchDetailBody();
    }),

    );
  }

  searchResultBody(){
    return  Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            itemCount: searchController.searchResults.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () async{
                  textEditingController.text = searchController.searchResults[index].name!;
                  await searchController.searchDetail(word: searchController.searchResults[index].name!);
                  searchController.changeIsSelect(true);
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
          )
        );
  }

  searchDetailBody() {
    return  SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          Text("컨텐츠 검색 결과",style: TextStyle(fontSize: 20,color: Colors.green),),
          SizedBox(height: 20),
          SizedBox(
            height: 250,
            child: ListView.separated(
              primary: false,
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(5.0),
              itemCount: searchController.posts.length,
              separatorBuilder: (BuildContext context, int index) => const Divider(),
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: SubstringHighlight(
                    textStyle: TextStyle(fontSize: 20,color: Colors.black,),
                    text: searchController.posts[index].title!, // ?? "검색 결과 없음"
                    textStyleHighlight: TextStyle(fontSize: 20,color: Colors.green),
                    term: textEditingController.text,
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 25),
          Text("상품 검색 결과",style: TextStyle(fontSize: 20,color: Colors.green),),
          SizedBox(height: 20),
          GridView.count(
            primary: false,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            crossAxisCount: 3,
            childAspectRatio: 1 / 1.8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(searchController.events.length, (index) {
              return Container(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        CachedNetworkImage(
                          imageUrl: searchController.events[index].photo ?? "",
                        ),
                        Positioned(
                          bottom: 0,
                            right: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                  border: Border.all(color: Colors.green),
                                borderRadius: BorderRadius.all(
                                    Radius.circular(5.0) //                 <--- border radius here
                                ),
                              ),
                              child: Text(searchController.events[index].dcrate ?? "",style: TextStyle(color: Colors.white,fontSize: 15),),
                        ))

                      ],
                    ),
                    Text(searchController.events[index].barnd?.name ?? "",style: TextStyle(fontSize: 7)),
                    Text(searchController.events[index].title ?? "", style: TextStyle(fontSize: 15),maxLines: 2,overflow: TextOverflow.ellipsis,),
                    Text("${searchController.events[index].listprice}원",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    )

                  ],
                ),
              );
            },
          )
          ),
        ],
      ),
    );
  }

  search(String text) async {
    await searchController.search(name: text);
  }
}
