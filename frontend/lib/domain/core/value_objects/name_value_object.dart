import 'package:equatable/equatable.dart';
class Name extends Equatable{
  final String name;
  
  Name(this.name){
    if(name.isEmpty){
      throw Exception('Name can not be empty');
    }
    if(name.length < 3){
      throw Exception('Name must be at least 3 characters');
    }
  }
  isValid(){
    return name.length >= 3;
  }
  factory Name.fromJson(Map<String, dynamic> json){
    return Name(json['name']);
  }
  Map<String, dynamic> toJson(){
    return {
      'name': name,
    };
  }
  @override 
  List<Object?> get props => [name];

}