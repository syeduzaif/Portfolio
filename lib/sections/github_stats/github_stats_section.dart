import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/constants/app_strings.dart';
import '../../core/constants/app_urls.dart';
import '../../core/responsive/responsive.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../widgets/buttons/primary_button.dart';
import '../../widgets/effects/scroll_reveal.dart';
import '../../widgets/section_header.dart';

class GitHubStatsSection extends StatelessWidget {
  const GitHubStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: context.responsive(
          mobile: AppSpacing.sectionVerticalMobile,
          desktop: AppSpacing.sectionVertical,
        ),
        horizontal: context.responsive(
          mobile: AppSpacing.sectionHorizontalMobile,
          desktop: AppSpacing.sectionHorizontal,
        ),
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: AppSpacing.maxContentWidth),
          child: Column(
            children: [
              ScrollReveal(
                child: const SectionHeader(
                  overline: AppStrings.githubOverline,
                  title: AppStrings.githubTitle,
                ),
              ),
              const SizedBox(height: AppSpacing.huge),

              // Stats cards
              ScrollReveal(
                delay: const Duration(milliseconds: 200),
                child: Wrap(
                  spacing: AppSpacing.l,
                  runSpacing: AppSpacing.l,
                  alignment: WrapAlignment.center,
                  children: [
                    _buildStatImage(AppUrls.githubStats, isDark, context),
                    _buildStatImage(AppUrls.githubStreak, isDark, context),
                  ],
                ),
              ),
              const SizedBox(height: AppSpacing.l),

              ScrollReveal(
                delay: const Duration(milliseconds: 400),
                child: _buildStatImage(AppUrls.githubLanguages, isDark, context),
              ),
              const SizedBox(height: AppSpacing.xxl),

              // CTA
              ScrollReveal(
                delay: const Duration(milliseconds: 500),
                child: PrimaryButton(
                  text: AppStrings.githubCta,
                  icon: Icons.open_in_new_rounded,
                  onPressed: () => launchUrl(Uri.parse(AppUrls.github)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatImage(String url, bool isDark, BuildContext context) {
    final width = context.responsive(
      mobile: context.screenWidth - 32,
      desktop: 495.0,
    );

    return Container(
      width: width,
      constraints: const BoxConstraints(minHeight: 150),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceElevatedDark : AppColors.surfaceElevatedLight,
        borderRadius: BorderRadius.circular(AppSpacing.radiusM),
        border: Border.all(
          color: isDark ? AppColors.borderDark : AppColors.borderLight,
        ),
      ),
      clipBehavior: Clip.antiAlias,
      child: Image.network(
        url,
        fit: BoxFit.contain,
        errorBuilder: (_, __, ___) => SizedBox(
          height: 150,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.bar_chart_rounded,
                  size: 40,
                  color: AppColors.primary.withValues(alpha: 0.5),
                ),
                const SizedBox(height: AppSpacing.xs),
                Text(
                  'GitHub Stats',
                  style: TextStyle(
                    color: isDark ? AppColors.textMutedDark : AppColors.textMutedLight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
