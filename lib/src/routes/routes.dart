import 'package:flutter/material.dart';

import 'package:flutter_application_2/src/pages/alert_page.dart';
import 'package:flutter_application_2/src/pages/avatar_page.dart';
import 'package:flutter_application_2/src/pages/card_pages.dart';
import 'package:flutter_application_2/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {

  return <String, WidgetBuilder>{
    '/'      : (context) => HomePage(),
    'alert'  : (context) => AlertPage(),
    'avatar' : (context) => AvatarPage(),
    'card'   : (context) => CardPage(),
  };
}