import 'package:hotels/core/presentation/app.dart';
import 'package:hotels/core/presentation/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
