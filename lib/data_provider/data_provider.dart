import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_integration_examples/model/user_model.dart';
import 'package:riverpod_integration_examples/services/api_services.dart';

final userDataProvider = FutureProvider<List<UserModel>>((ref) async{
  return ref.watch(userServiceProvider).getAllUsers();
});