import 'package:analyzer/dart/analysis/context_builder.dart';
import 'package:analyzer/dart/analysis/context_locator.dart';
import 'package:analyzer/dart/analysis/declared_variables.dart';

main() async {
  final analysisContext = ContextBuilder().createContext(
    contextRoot:
        ContextLocator().locateRoots(includedPaths: ['example/']).first,
    sdkPath: '/usr/local/google/home/sigurdm/Downloads/dart-sdk',
    declaredVariables: DeclaredVariables.fromMap({'dart.library.html': 'true'}),
  );
  print((await analysisContext.currentSession
          .getLibraryByUri('package:example/main.dart'))
      .imports);
}
