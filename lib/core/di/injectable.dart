import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable.config.dart';

@InjectableInit()
final getit = GetIt.instance;
Future<void> configureinjection() async {
  await $initGetIt(getit, environment: Environment.prod);
}
