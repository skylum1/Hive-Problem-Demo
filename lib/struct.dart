// import 'dart:ffi';
import 'package:hive/hive.dart';
part 'struct.g.dart';

@HiveType(typeId: 0)
enum status {
  @HiveField(0)
  toWatch,
  @HiveField(1)
  watching,
  @HiveField(2)
  watched
}

@HiveType(typeId: 1)
class Movie {
  @HiveField(0)
  status type;
  Movie(this.type);
//todo: reminder,

}
