import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qiita_client/main.dart';
import 'package:qiita_client/pages/top_page.dart';

final router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage(
            child: TopPage(),
          )),
  GoRoute(
    path: '/feed',
    pageBuilder: (context, state) =>
        const MaterialPage(child: BottomNavigationView()),
  )
]);
