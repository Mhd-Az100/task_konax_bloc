import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_konax_posts/app/posts/view/posts_page.dart';
import 'package:task_konax_posts/simple_bloc_observer.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PostsPage(),
  ));
}
