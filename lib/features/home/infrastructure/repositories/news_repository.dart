import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../utils/paginated.dart';
import '../../domain/entities/news.dart';
import '../../domain/entities/news_category.dart';
import '../../domain/repositories/news_repository.dart';

@LazySingleton(as: NewsRepository)
class TestNewsRepository implements NewsRepository {
  const TestNewsRepository();

  @override
  Future<Paginated<List<News>>> get({
    required String categoryID,
    required int offset,
    required int limit,
  }) async {
    if (offset != 0) {
      return Paginated(
        offset: offset,
        totalCount: 5,
        count: 0,
        value: [],
      );
    }

    return Paginated(
      offset: 0,
      count: 5,
      totalCount: 5,
      value: [
        News(
          id: '1',
          title:
              'Последние разработки в области энергоэффективности, инженерных систем, архитектуры и дизайна: что покажет Россия на выставке UzBuild',
          content: _content,
          publishedAt: DateTime(2023, 2, 28),
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.news1.path),
          ),
          readTime: const Duration(minutes: 5),
        ),
        News(
          id: '2',
          title:
              'Стратегии поддержки и новые горизонты: в преддверии Российского форума дизайна и моды',
          content: _content,
          publishedAt: DateTime(2023, 2, 28),
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.news2.path),
          ),
          readTime: const Duration(minutes: 5),
        ),
        News(
          id: '3',
          title: 'Почему нет санкций на производство титана?',
          content: _content,
          publishedAt: DateTime(2023, 2, 27),
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.news1.path),
          ),
          readTime: const Duration(minutes: 5),
        ),
        News(
          id: '4',
          title: 'Почему нет санкций на производство титана?',
          content: _content,
          publishedAt: DateTime(2023, 2, 27),
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.news1.path),
          ),
          readTime: const Duration(minutes: 5),
        ),
        News(
          id: '5',
          title: 'Почему нет санкций на производство титана?',
          content: _content,
          publishedAt: DateTime(2023, 2, 27),
          image: Uint8List.sublistView(
            await rootBundle.load(Assets.mock.images.news1.path),
          ),
          readTime: const Duration(minutes: 5),
        ),
      ],
    );
  }

  @override
  Future<News> getByID(String id) {
    return Future.delayed(const Duration(milliseconds: 800), () async {
      return News(
        id: '1',
        title:
            'Последние разработки в области энергоэффективности, инженерных систем, архитектуры и дизайна: что покажет Россия на выставке UzBuild',
        content: _content,
        publishedAt: DateTime(2023, 2, 28),
        image: Uint8List.sublistView(
          await rootBundle.load(Assets.mock.images.news1.path),
        ),
        readTime: const Duration(minutes: 5),
      );
    });
  }

  @override
  Future<List<NewsCategory>> getCategories() async {
    return Future.delayed(const Duration(milliseconds: 800), () {
      return [
        const NewsCategory(
          id: '1',
          name: 'Все',
        ),
        const NewsCategory(
          id: '2',
          name: 'Глобальные тренды',
        ),
        const NewsCategory(
          id: '3',
          name: 'Отрасли',
        ),
        const NewsCategory(
          id: '4',
          name: 'Российский вектор',
        ),
        const NewsCategory(
          id: '5',
          name: 'Финансы и торговля',
        ),
        const NewsCategory(
          id: '6',
          name: 'Технологии будущего',
        ),
        const NewsCategory(
          id: '7',
          name: 'Регионы России',
        ),
        const NewsCategory(
          id: '8',
          name: 'Национальные проекты',
        ),
      ];
    });
  }
}

const _content = '''
28 февраля в Ташкенте Российский экспортный центр (входит в ВЭБ.РФ) впервые открыл российский павильон на крупнейшей строительной выставке в Узбекистане. Под брендом Made in Russia на UzBuild 20 российских компаний представят свои достижения и новейшие разработки в сфере строительства.
На выставке российские компании продемонстрируют инновационные технологии и материалы, которые уже успешно применяются в строительной отрасли. Посетители смогут ознакомиться с последними разработками в области энергоэффективности, инженерных систем, архитектуры и дизайна.
Экспозиция Made in Russia площадью более 350 кв.м занимает одно из главных мест на выставке. На стенде российские компании проведут переговоры с представителями специалистов строительной отрасли Узбекистана, Казахстана, Киргизии, Таджикистана и других стран.
«Участие России в UzBuild под национальным брендом является важным шагом в укреплении экономических связей и развитии строительной отрасли наших стран. В течение следующих четырех дней участники проведут более 150 целевых встреч с потенциальными партнерами и наладят деловые связи. Российский экспортный центр, в свою очередь, будет оказывать им поддержку на каждом этапе выхода на рынок Узбекистана», — отметил представитель РЭЦ в Узбекистане Павел Буханов.
«Узбекистан интересен российским компаниям, и главное, что этот интерес взаимный. Наши компании представляют на UzBuild качественную продукцию, которая пользуется спросом на местном рынке. Уверен, работа будет плодотворная и переговоры приведут к долгосрочному сотрудничеству», — отметил Заместитель председателя ВЭБ.РФ Даниил Алгульян.
Бренд «Сделано в России» Российский экспортный центр продвигает в партнерстве с Фондом Росконгресс.
  ''';
