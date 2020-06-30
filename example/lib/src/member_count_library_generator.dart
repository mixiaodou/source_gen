// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'utils.dart';

class MemberCountLibraryGenerator extends Generator {
  @override
  String generate(LibraryReader library, BuildStep buildStep) {
    print('------------a ${library.element.source.uri}');
    final topLevelVarCount = topLevelNumVariables(library).length;

//   return '';//如果 返回空数据，不生成对应的dart文件

    return '''
    // Source library: ${library.element.source.uri}
      const topLevelNumVarCount = $topLevelVarCount;
    ''';
  }
}
