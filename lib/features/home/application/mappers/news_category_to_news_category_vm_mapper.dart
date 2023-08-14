import 'package:injectable/injectable.dart';

import '../../../../utils/mapper.dart';
import '../../domain/entities/news_category.dart';
import '../view_models/news_category_vm.dart';

@LazySingleton(as: Mapper<NewsCategory, NewsCategoryVM>)
class NewsCategoryToNewsCategoryVMMapper
    extends Mapper<NewsCategory, NewsCategoryVM> {
  const NewsCategoryToNewsCategoryVMMapper();

  @override
  NewsCategoryVM map(NewsCategory item) {
    return NewsCategoryVM(
      id: item.id,
      name: item.name,
    );
  }
}
