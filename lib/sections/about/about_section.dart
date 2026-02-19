import 'package:flutter/material.dart';
import '../../core/constants/app_strings.dart';
import '../../core/responsive/responsive.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_fonts.dart';
import '../../core/theme/app_spacing.dart';
import '../../widgets/effects/scroll_reveal.dart';
import '../../widgets/section_header.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

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
                  overline: AppStrings.aboutOverline,
                  title: AppStrings.aboutTitle,
                ),
              ),
              SizedBox(
                height: context.responsive(
                  mobile: AppSpacing.xxl,
                  desktop: AppSpacing.huge,
                ),
              ),
              context.isMobile
                  ? _buildMobileLayout(isDark, context)
                  : _buildDesktopLayout(isDark, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDesktopLayout(bool isDark, BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Photo placeholder
        Expanded(
          flex: 2,
          child: ScrollReveal(
            slideOffset: const Offset(-40, 0),
            child: _buildPhotoPlaceholder(isDark),
          ),
        ),
        const SizedBox(width: AppSpacing.huge),
        // Text content
        Expanded(
          flex: 3,
          child: _buildTextContent(isDark, context),
        ),
      ],
    );
  }

  Widget _buildMobileLayout(bool isDark, BuildContext context) {
    return Column(
      children: [
        ScrollReveal(child: _buildPhotoPlaceholder(isDark)),
        const SizedBox(height: AppSpacing.xxl),
        _buildTextContent(isDark, context),
      ],
    );
  }

  Widget _buildPhotoPlaceholder(bool isDark) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSpacing.radiusXl),
        gradient: LinearGradient(
          colors: [
            AppColors.primary.withValues(alpha: 0.2),
            AppColors.secondary.withValues(alpha: 0.2),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.3),
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.person_rounded,
              size: 80,
              color: AppColors.primary.withValues(alpha: 0.5),
            ),
            const SizedBox(height: AppSpacing.s),
            Text(
              'Your Photo Here',
              style: AppFonts.bodyMedium.copyWith(
                color: AppColors.primary.withValues(alpha: 0.5),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextContent(bool isDark, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ScrollReveal(
          delay: const Duration(milliseconds: 200),
          child: Text(
            AppStrings.aboutDescription,
            style: AppFonts.bodyLarge.copyWith(
              color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.l),

        // Education
        ScrollReveal(
          delay: const Duration(milliseconds: 300),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 2),
                child: Icon(Icons.school_rounded, color: AppColors.primary, size: 20),
              ),
              const SizedBox(width: AppSpacing.xs),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.aboutEducation,
                      style: AppFonts.bodyMedium.copyWith(
                        color: isDark ? AppColors.textPrimaryDark : AppColors.textPrimaryLight,
                        fontWeight: AppFonts.medium,
                      ),
                    ),
                    Text(
                      AppStrings.aboutUniversity,
                      style: AppFonts.bodySmall.copyWith(
                        color: isDark ? AppColors.textSecondaryDark : AppColors.textSecondaryLight,
                      ),
                    ),
                    Text(
                      AppStrings.aboutCoursework,
                      style: AppFonts.bodySmall.copyWith(
                        color: isDark ? AppColors.textMutedDark : AppColors.textMutedLight,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.m),

        // Availability
        ScrollReveal(
          delay: const Duration(milliseconds: 350),
          child: Row(
            children: [
              const Icon(Icons.public_rounded, color: AppColors.success, size: 20),
              const SizedBox(width: AppSpacing.xs),
              Expanded(
                child: Text(
                  AppStrings.aboutAvailability,
                  style: AppFonts.bodySmall.copyWith(
                    color: AppColors.success,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.xxl),

        // Stats row
        ScrollReveal(
          delay: const Duration(milliseconds: 400),
          child: Wrap(
            spacing: AppSpacing.m,
            runSpacing: AppSpacing.m,
            children: [
              _buildStatCard(AppStrings.statExperience, AppStrings.statExperienceLabel, isDark),
              _buildStatCard(AppStrings.statUsers, AppStrings.statUsersLabel, isDark),
              _buildStatCard(AppStrings.statCrashFree, AppStrings.statCrashFreeLabel, isDark),
              _buildStatCard(AppStrings.statApps, AppStrings.statAppsLabel, isDark),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatCard(String value, String label, bool isDark) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.l,
        vertical: AppSpacing.m,
      ),
      decoration: BoxDecoration(
        color: isDark ? AppColors.surfaceElevatedDark : AppColors.surfaceElevatedLight,
        borderRadius: BorderRadius.circular(AppSpacing.radiusM),
        border: Border.all(
          color: isDark ? AppColors.borderDark : AppColors.borderLight,
        ),
      ),
      child: Column(
        children: [
          Text(
            value,
            style: AppFonts.h3.copyWith(
              color: AppColors.primary,
            ),
          ),
          const SizedBox(height: AppSpacing.xxs),
          Text(
            label,
            style: AppFonts.labelSmall.copyWith(
              color: isDark ? AppColors.textMutedDark : AppColors.textMutedLight,
            ),
          ),
        ],
      ),
    );
  }
}
