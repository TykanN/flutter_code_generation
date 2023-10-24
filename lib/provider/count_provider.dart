import 'package:flutter_code_generation/model/count_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'count_provider.g.dart';

final countProvider = StateProvider<int>((_) => 0);
final countModelProvider = StateProvider<CountModel>((_) => CountModel.empty());
final countModelNotifierProvider = StateNotifierProvider<CountModelNotifer, CountModel>((_) => CountModelNotifer());

class CountModelNotifer extends StateNotifier<CountModel> {
  CountModelNotifer() : super(CountModel.empty());

  void increment() {
    state = state.copyWith(value: state.value + 1, lastUpdatedAt: DateTime.now());
  }

  void decrement() {
    state = state.copyWith(value: state.value - 1, lastUpdatedAt: DateTime.now());
  }
}

@riverpod
class CountModelG extends _$CountModelG {
  @override
  CountModel build() {
    return CountModel.empty();
  }

  void increment() {
    state = state.copyWith(value: state.value + 1, lastUpdatedAt: DateTime.now());
  }

  void decrement() {
    state = state.copyWith(value: state.value - 1, lastUpdatedAt: DateTime.now());
  }
}
