import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trnews/core/constants/colors.dart';
import 'package:trnews/features/home/domain/models/fixture/fixture_model.dart';
import 'package:trnews/features/home/presentation/bloc/fixture_bloc/fixture_bloc.dart';
import 'package:trnews/features/shared/widgets/custom_shimmer.dart'; // Assuming you have this
import 'package:trnews/core/di/locator.dart'; // For locator
import 'package:trnews/features/home/domain/repositories/home_repository.dart'; // For HomeRepository

class FixtureSection extends StatelessWidget {
  final bool isFull;

  const FixtureSection({super.key, this.isFull = false});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => FixtureBloc(locator<HomeRepository>())
        ..add(const FixtureEvent.fetch()),
      child: BlocBuilder<FixtureBloc, FixtureState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const _FixtureTableShimmer(),
            loaded: (fixtures) =>
                _FixtureTable(fixtures: fixtures, isFull: isFull),
            error: (message) => Padding(
              padding: EdgeInsets.all(16.r),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 12.h),
                    ElevatedButton.icon(
                      onPressed: () {
                        context
                            .read<FixtureBloc>()
                            .add(const FixtureEvent.fetch());
                      },
                      icon: const Icon(Icons.refresh),
                      label: const Text('Tekrar Dene'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _FixtureTable extends StatelessWidget {
  final List<FixtureModel> fixtures;
  final bool isFull;

  const _FixtureTable({required this.fixtures, this.isFull = false});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    // Tüm verileri göstermek için sınırlamayı kaldırıyoruz
    final displayFixtures = fixtures;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(4.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header: SÜPER LİG
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: AppColors.success, // Green color
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.r),
                topRight: Radius.circular(4.r),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "SÜPER LİG",
                  style: textTheme.titleMedium?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.sp),
                ),
                const Icon(Icons.sports_soccer, color: Colors.white),
              ],
            ),
          ),
          // Table Header
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
            child: Row(
              children: [
                Expanded(
                    flex: 4,
                    child: Text("Takımlar",
                        style: textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.bold, fontSize: 14.sp))),
                _buildHeaderCell(context, "P", flex: 1),
                _buildHeaderCell(context, "W", flex: 1),
                _buildHeaderCell(context, "D", flex: 1),
                _buildHeaderCell(context, "L", flex: 1),
                _buildHeaderCell(context, "P", flex: 1),
              ],
            ),
          ),
          // Table Rows
          // İlk 10 satır
          Column(
            children: [
              for (int index = 0;
                  index <
                      (displayFixtures.length > 5 ? 5 : displayFixtures.length);
                  index++) ...[
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            Container(
                              width: 24.r,
                              height: 24.r,
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .surfaceVariant,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 4,
                                    offset: const Offset(0, 1),
                                  ),
                                ],
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                "${displayFixtures[index].rank}",
                                style: textTheme.labelMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurfaceVariant),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            Expanded(
                              child: Text(
                                displayFixtures[index].team,
                                style: textTheme.bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.w500),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      _buildDataCell(context, "${displayFixtures[index].play}",
                          flex: 1),
                      _buildDataCell(context, "${displayFixtures[index].win}",
                          flex: 1),
                      _buildDataCell(context, "${displayFixtures[index].draw}",
                          flex: 1),
                      _buildDataCell(context, "${displayFixtures[index].lose}",
                          flex: 1),
                      _buildDataCell(context, "${displayFixtures[index].point}",
                          flex: 1, isBold: true),
                    ],
                  ),
                ),
                if (index < displayFixtures.length - 1)
                  Divider(
                      height: 1,
                      thickness: 0.3,
                      indent: 16,
                      endIndent: 16,
                      color: Colors.grey.withOpacity(0.3)),
              ],
            ],
          ),

          // 10 satırdan sonrası için kaydırılabilir alan
          if (displayFixtures.length > 5)
            Container(
              height: 300.h, // Kaydırılabilir alanın yüksekliği
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.grey.withOpacity(0.3),
                    width: 1.0,
                  ),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int index = 5;
                        index < displayFixtures.length;
                        index++) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.w, vertical: 14.h),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Row(
                                children: [
                                  Container(
                                    width: 24.r,
                                    height: 24.r,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .surfaceVariant,
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 4,
                                          offset: const Offset(0, 1),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "${displayFixtures[index].rank}",
                                      style: textTheme.labelMedium?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurfaceVariant),
                                    ),
                                  ),
                                  SizedBox(width: 8.w),
                                  Expanded(
                                    child: Text(
                                      displayFixtures[index].team,
                                      style: textTheme.bodyMedium?.copyWith(
                                          fontWeight: FontWeight.w500),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            _buildDataCell(
                                context, "${displayFixtures[index].play}",
                                flex: 1),
                            _buildDataCell(
                                context, "${displayFixtures[index].win}",
                                flex: 1),
                            _buildDataCell(
                                context, "${displayFixtures[index].draw}",
                                flex: 1),
                            _buildDataCell(
                                context, "${displayFixtures[index].lose}",
                                flex: 1),
                            _buildDataCell(
                                context, "${displayFixtures[index].point}",
                                flex: 1, isBold: true),
                          ],
                        ),
                      ),
                      if (index < displayFixtures.length - 1)
                        Divider(
                            height: 1,
                            thickness: 0.3,
                            indent: 16,
                            endIndent: 16,
                            color: Colors.grey.withOpacity(0.3)),
                    ],
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildHeaderCell(BuildContext context, String text, {int flex = 1}) {
    return Expanded(
      flex: flex,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
      ),
    );
  }

  Widget _buildDataCell(BuildContext context, String text,
      {int flex = 1, bool isBold = false}) {
    return Expanded(
      flex: flex,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withAlpha(150),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
      ),
    );
  }
}

class _FixtureTableShimmer extends StatelessWidget {
  const _FixtureTableShimmer();

  @override
  Widget build(BuildContext context) {
    final baseColor = Colors.grey.shade300;
    final highlightColor = Colors.grey.shade100;

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 12.w), // vertical padding kaldırıldı
      child: Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white, // This color will be overridden by shimmer
            borderRadius: BorderRadius.circular(4.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Shimmer for "SÜPER LİG" header
              Container(
                height: 44.h, // Adjusted to match _FixtureTable header padding
                decoration: BoxDecoration(
                  color: baseColor, // Placeholder color
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4.r),
                    topRight: Radius.circular(4.r),
                  ),
                ),
              ),
              // Shimmer for table header
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        height: 16.h,
                        color: baseColor,
                        margin: EdgeInsets.only(right: 4.w),
                      ),
                    ),
                    ...List.generate(
                      5,
                      (index) => Expanded(
                        flex: 1,
                        child: Container(
                          height: 16.h,
                          color: baseColor,
                          margin: EdgeInsets.symmetric(horizontal: 2.w),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Shimmer for table rows
              ...List.generate(
                5, // Number of shimmer rows
                (rowIndex) => Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Container(
                                  width: 24.r,
                                  height: 24.r,
                                  decoration: BoxDecoration(
                                    color: baseColor,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                Expanded(
                                  child: Container(
                                    height: 14.h,
                                    color: baseColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ...List.generate(
                            5,
                            (cellIndex) => Expanded(
                              flex: 1,
                              child: Container(
                                height: 14.h,
                                color: baseColor,
                                margin: EdgeInsets.symmetric(horizontal: 4.w),
                              ),
                            ),
                          ),
                        ],
                      ),
                      if (rowIndex <
                          4) // Add divider for all but the last shimmer row
                        Padding(
                          padding: EdgeInsets.only(top: 10.h),
                          child: const Divider(height: 1, thickness: 1),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
