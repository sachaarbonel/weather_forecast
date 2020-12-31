
import 'dart:io';

String testPath(String relativePath) {
  //Fix vscode test path
  final current = Directory.current;
  final path =
      current.path.endsWith('/test') ? current.path : current.path + '/test';

  return path + '/' + relativePath;
}
