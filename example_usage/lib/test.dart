import 'package:source_gen_example/annotations.dart';

part 'test.g.dart';
int d = 009;

String e = '10';

num f = 12;

//自己 创建的
@Multiplier(9)
class Test {
  int a = 007;

  @Multiplier(008)
  int b = 008;

  num c = 5;
}


/// source_gen 中的 扫描器，只扫描顶层element
/// source_gen 中的 builder有两种：
/// 1.生成 附属的part 文件
/// 2.生成 library(相对于附属的文件来说的，本质就是一个独立的.dart文件) 文件
