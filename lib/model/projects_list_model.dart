import 'package:flutter/material.dart';

class ProjectListModel{
  final String? title ,description;

  final List<String>? images,skills;

  final List<Links>? links;

  ProjectListModel(this.title, this.description, this.images, this.skills,
      {this.links});


}

class Links {
  final String? link;
  final IconData? icon;

  Links(this.icon, this.link);
}

