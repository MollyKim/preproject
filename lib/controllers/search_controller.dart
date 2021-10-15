import 'package:preproject/controllers/root_controller.dart';
import 'package:preproject/models/searchDetails/search_detail.dart';
import 'package:preproject/models/searchModel/serach_model.dart';
import 'package:preproject/services/root_service.dart';

class SearchController extends BaseController{
  SearchController(RootService rootService) : super(rootService);

  bool isSelected = false;
  List<GetSearchResult> searchResults = [];
  List<Post> posts = [];
  List<Event> events = [];


  search({
    required String name,
  }) async {

    searchResults = await super.rootService.searchService.searchName(name);
    update();
  }

  searchDetail({
    required String word,
  }) async {

    final DetailData resp = await super.rootService.searchService.searchDetail(word);
    posts.addAll(resp.data!.posts!);
    events.addAll(resp.data!.events!);
    update();
  }


  changeIsSelect(bool change){
    isSelected = change;
    update();
  }
}