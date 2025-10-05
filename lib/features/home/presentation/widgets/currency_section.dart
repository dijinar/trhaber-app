import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trnews/core/constants/colors.dart';
import 'package:trnews/features/shared/widgets/custom_shimmer.dart';

import '../../../../core/di/locator.dart';
import '../../domain/models/currency/currency_model.dart';
import '../../domain/repositories/currency_repository.dart';
import '../bloc/currency_bloc/currency_bloc.dart';

class CurrencySection extends StatefulWidget {
  final bool showConvererter;
  const CurrencySection({
    super.key,
    this.showConvererter = true,
  });

  @override
  State<CurrencySection> createState() => CurrencySectionState();
}

class CurrencySectionState extends State<CurrencySection> {
  CurrencyBloc? _currencyBloc;
  String? fromCode = "DOLAR";
  String? toCode = "TL";
  final TextEditingController _controller = TextEditingController(text: "1");
  bool _initialConversionDone =
      false; // Add flag to track if initial conversion happened

  // Add key to help with state preservation
  final GlobalKey<State> _dropdownKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    // Initialize bloc here but don't use it yet
    _currencyBloc = CurrencyBloc(locator<CurrencyRepository>())
      ..add(const CurrencyEvent.fetch());
  }

  @override
  void dispose() {
    _controller.dispose();
    _currencyBloc?.close(); // Close the bloc when widget is disposed
    super.dispose();
  }

  void _convert() {
    if (_currencyBloc == null) return;

    final amount = double.tryParse(_controller.text);
    if (fromCode != null && toCode != null && amount != null) {
      _currencyBloc!.add(CurrencyEvent.convert(
        fromCode: fromCode!,
        toCode: toCode!,
        amount: amount,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _currencyBloc!,
      child: BlocConsumer<CurrencyBloc, CurrencyState>(
        listener: (context, state) {
          // Only run this code once when currencies are initially loaded
          if (state is Loaded &&
              !state.currencies.isEmpty &&
              !_initialConversionDone) {
            // Store the actual currency codes from the API
            final dolarCode =
                _findMatchingCurrencyCode(state.currencies, "DOLAR");
            final tlCode = _findMatchingCurrencyCode(state.currencies, "TL");

            // Only update if we found matches
            if (dolarCode != null && tlCode != null) {
              setState(() {
                fromCode = dolarCode;
                toCode = tlCode;
                _initialConversionDone = true; // Mark initialization as done
              });

              // Trigger initial conversion
              _convert();
            }
          }
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () => CustomShimmer(
              itemCount: widget.showConvererter ? 2 : 1,
              height: widget.showConvererter ? 120 : 40,
            ),
            loaded: (currencies, result) {
              // Filter out TL from the display list
              final displayCurrencies = currencies
                  .where((currency) => currency.title.toUpperCase() != "TL")
                  .toList();

              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    SizedBox(
                      height: 48.h,
                      child: ListView.separated(
                        separatorBuilder: (_, __) => SizedBox(width: 8.w),
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            displayCurrencies.length, // Use filtered list
                        itemBuilder: (context, index) {
                          final CurrencyModel currency =
                              displayCurrencies[index]; // Use filtered list

                          return Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              color:
                                  Theme.of(context).colorScheme.surfaceBright,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                _buildCurrencyIcon(currency.icon),
                                const SizedBox(width: 6),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(currency.title,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium!),
                                    Row(
                                      children: [
                                        Text(currency.value,
                                            style: Theme.of(context)
                                                .textTheme
                                                .displaySmall!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                )),
                                        const SizedBox(width: 12),
                                        Icon(
                                          currency.status == "up"
                                              ? Icons.arrow_upward
                                              : Icons.arrow_downward,
                                          color: currency.status == "up"
                                              ? AppColors.success
                                              : AppColors.error,
                                          size: 16.r,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                    if (widget.showConvererter)
                      _buildConverter(
                          currencies, result), // Use full list for converter
                  ],
                ),
              );
            },
            error: (message) => Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.error_outline,
                        size: 40, color: Theme.of(context).colorScheme.error),
                    const SizedBox(height: 12),
                    Text(
                      "Döviz bilgileri yüklenemedi: $message",
                      style: Theme.of(context).textTheme.titleMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        // Use the bloc instance from state
                        _currencyBloc?.add(const CurrencyEvent.fetch());
                      },
                      child: const Text("Tekrar Dene"),
                    ),
                  ],
                ),
              ),
            ),
            orElse: () => const Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }

  // Updated method to rebuild key when dropdown selection changes
  void _updateFromCurrency(String? newValue) {
    if (newValue != null && newValue != fromCode) {
      setState(() {
        fromCode = newValue;
        // Force dropdown to rebuild with new key to ensure selected value appears
        _dropdownKey.currentState?.setState(() {});
      });
      _convert();
    }
  }

  // Updated method to rebuild key when dropdown selection changes
  void _updateToCurrency(String? newValue) {
    if (newValue != null && newValue != toCode) {
      setState(() {
        toCode = newValue;
        // Force dropdown to rebuild with new key to ensure selected value appears
        _dropdownKey.currentState?.setState(() {});
      });
      _convert();
    }
  }

  // Extract converter UI to simplify code
  Widget _buildConverter(List<CurrencyModel> currencies, double? result) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.w,
        vertical: 16.h,
      ),
      decoration: BoxDecoration(
        border: Border.all(
            color: Theme.of(context).colorScheme.onPrimary.withAlpha(50)),
        borderRadius: BorderRadius.circular(2.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4.r),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                child: Icon(
                  Icons.sync,
                  size: 20.r,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              const SizedBox(width: 8),
              Text("Çevir", style: Theme.of(context).textTheme.titleLarge),
              const Spacer(),
              Text(
                "DÖNÜŞTÜRÜCÜ",
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context)
                          .colorScheme
                          .onPrimary
                          .withAlpha(100),
                    ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              // Use StatefulBuilder to manage dropdown state locally
              StatefulBuilder(
                key: _dropdownKey,
                builder: (context, setDropdownState) {
                  return SizedBox(
                    width: 120,
                    child: DropdownButton<String>(
                      value: fromCode,
                      isExpanded: true,
                      icon: const Icon(Icons.arrow_drop_down),
                      underline: const SizedBox(),
                      hint: const Text("Seçin"),
                      items: currencies.map((currency) {
                        return DropdownMenuItem<String>(
                          value: currency.title,
                          child: Row(
                            children: [
                              _buildCurrencyIcon(currency.icon),
                              const SizedBox(width: 8),
                              Flexible(
                                child: Text(
                                  currency.title,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                      onChanged: _updateFromCurrency,
                    ),
                  );
                },
              ),
              const SizedBox(width: 8),
              Expanded(
                child: TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: false,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintText: 'Döviz miktarı',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      color: AppColors.lightText,
                    ),
                    isDense: true,
                  ),
                  onChanged: (_) => _convert(),
                ),
              ),
            ],
          ),
          Divider(
            color: Theme.of(context).colorScheme.onPrimary.withAlpha(50),
            height: 32,
          ),
          Row(
            children: [
              StatefulBuilder(
                builder: (context, setDropdownState) {
                  return SizedBox(
                    width: 120,
                    child: DropdownButton<String>(
                      value: toCode,
                      isExpanded: true,
                      icon: const Icon(Icons.arrow_drop_down),
                      underline: const SizedBox(),
                      hint: const Text("Seçin"),
                      items: currencies.map((currency) {
                        return DropdownMenuItem<String>(
                          value: currency.title,
                          child: Row(
                            children: [
                              _buildCurrencyIcon(currency.icon),
                              const SizedBox(width: 8),
                              Flexible(
                                child: Text(
                                  currency.title,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                      onChanged: _updateToCurrency,
                    ),
                  );
                },
              ),
              const SizedBox(width: 12),
              if (result != null)
                Expanded(
                  child: Text(
                    "= ${result.toStringAsFixed(2)}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }

  // Helper method to find the exact currency code that matches our expected code
  String? _findMatchingCurrencyCode(
      List<CurrencyModel> currencies, String targetCode) {
    // Try exact match first
    for (var currency in currencies) {
      if (currency.title == targetCode) {
        return currency.title;
      }
    }

    // Try case-insensitive match
    for (var currency in currencies) {
      if (currency.title.toLowerCase() == targetCode.toLowerCase()) {
        return currency.title;
      }
    }

    return null;
  }

  // Fixed error-handling image widget
  Widget _buildCurrencyIcon(String iconUrl) {
    return SizedBox(
      width: 18,
      height: 18,
      child: iconUrl.isNotEmpty
          ? Image.network(
              iconUrl,
              errorBuilder: (_, __, ___) =>
                  const Icon(Icons.monetization_on, size: 18),
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                );
              },
            )
          : const Icon(Icons.monetization_on, size: 18),
    );
  }
}
