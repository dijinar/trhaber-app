import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/currency_bloc/currency_bloc.dart';
import '../../domain/repositories/currency_repository.dart';
import '../../../../core/di/locator.dart';

class CurrencyDebug extends StatelessWidget {
  const CurrencyDebug({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CurrencyBloc(locator<CurrencyRepository>())
        ..add(const CurrencyEvent.fetch()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Currency Debug'),
        ),
        body: BlocBuilder<CurrencyBloc, CurrencyState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => const Center(child: CircularProgressIndicator()),
              loaded: (currencies, result) {
                return ListView(
                  padding: const EdgeInsets.all(16),
                  children: [
                    Text('Loaded ${currencies.length} currencies',
                        style: Theme.of(context).textTheme.titleMedium),
                    const SizedBox(height: 16),
                    ...currencies.map((currency) => Card(
                          margin: const EdgeInsets.only(bottom: 8),
                          child: ListTile(
                            leading: SizedBox(
                              width: 40,
                              height: 40,
                              child: Image.network(
                                currency.icon,
                                errorBuilder: (_, __, ___) =>
                                    const Icon(Icons.error),
                              ),
                            ),
                            title: Text(currency.title),
                            subtitle: Text('Value: ${currency.value}'),
                            trailing: Icon(
                              currency.status == "up"
                                  ? Icons.arrow_upward
                                  : Icons.arrow_downward,
                              color: currency.status == "up"
                                  ? Colors.green
                                  : Colors.red,
                            ),
                          ),
                        ))
                  ],
                );
              },
              error: (message) => Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.error_outline,
                        size: 48, color: Colors.red),
                    const SizedBox(height: 16),
                    Text('Error: $message'),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<CurrencyBloc>()
                            .add(const CurrencyEvent.fetch());
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              ),
              orElse: () => const Center(child: Text('Unknown state')),
            );
          },
        ),
      ),
    );
  }
}
