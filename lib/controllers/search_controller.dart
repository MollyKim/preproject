import 'package:preproject/controllers/root_controller.dart';
import 'package:preproject/models/serach_model.dart';
import 'package:preproject/services/root_service.dart';

class SearchController extends BaseController{
  SearchController(RootService rootService) : super(rootService);

  bool isSelected = false;
  List<GetSearchResult> searchResults = [];

  search({
    required String name,
  }) async {

    searchResults = await super.rootService.searchService.postLoginIngoBody(name);
    update();
  }

  changeIsSelect(bool change){
    isSelected = change;
    update();
  }
}