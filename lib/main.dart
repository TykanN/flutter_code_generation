import 'package:flutter/material.dart';
import 'package:flutter_code_generation/api/report_api.dart';
import 'package:flutter_code_generation/provider/count_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const targetUuid = 'cb221c2b-3465-4c22-9ba9-a668aeb358ad';
    final count = ref.watch(countModelGProvider);

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 80),
                Text(count.value.toString()),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        ref.read(countModelGProvider.notifier).increment();
                      },
                      child: const Text('+'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        ref.read(countModelGProvider.notifier).decrement();
                      },
                      child: const Text('-'),
                    ),
                  ],
                ),
                FutureBuilder(
                  future: ref.watch(reportApiProvider).getReport(uuid: targetUuid),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Text(snapshot.requireData);
                    }
                    return const CircularProgressIndicator();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
