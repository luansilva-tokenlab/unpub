import 'package:angular_router/angular_router.dart';

import 'package:unpub_web/src/home_component.dart' as home_template;
import 'package:unpub_web/src/list_component.dart' as list_template;
import 'package:unpub_web/src/detail_component.dart' as detail_template;

// import 'not_found_component.template.dart' as not_found_template;

class RoutePaths {
  static final home = RoutePath(path: '');
  static final list = RoutePath(path: 'packages');
  static final detail = RoutePath(path: 'packages/:name');
  static final detailVersion =
      RoutePath(path: 'packages/:name/versions/:version');
}

class Routes {
  static final home = RouteDefinition(
    routePath: RoutePaths.home,
    component: home_template.HomeComponentNgFactory,
  );
  static final list = RouteDefinition(
    routePath: RoutePaths.list,
    component: list_template.ListComponentNgFactory,
  );
  static final detail = RouteDefinition(
    routePath: RoutePaths.detail,
    component: detail_template.DetailComponentNgFactory,
  );
  static final detailVersion = RouteDefinition(
    routePath: RoutePaths.detailVersion,
    component: detail_template.DetailComponentNgFactory,
  );

  static final all = <RouteDefinition>[
    home,
    list,
    detail,
    // RouteDefinition.redirect(
    //   path: '',
    //   redirectTo: RoutePaths.heroes.toUrl(),
    // ),
    // RouteDefinition(
    //   path: '.*',
    //   component: not_found_template.NotFoundComponentNgFactory,
    // ),
  ];
}
