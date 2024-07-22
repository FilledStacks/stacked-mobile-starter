import 'package:flutter/material.dart';
import 'package:stacked_mobile_starter/extensions/context_extension.dart';
import 'package:stacked_mobile_starter/generated/l10n.dart';
import 'package:stacked_mobile_starter/ui/common/common.dart';
import 'package:stacked_mobile_starter/ui/widgets/primary_button.dart';

class UserCard extends StatelessWidget {
  final VoidCallback? onEditProfileTap;
  final VoidCallback? onEditProfileImageTap;
  const UserCard({
    super.key,
    this.onEditProfileTap,
    this.onEditProfileImageTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(
        bottom: 40,
        top: 40,
      ),
      decoration: BoxDecoration(
        color: context.palette.textColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 80,
                width: 80,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/png/user_avatar.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: 50,
                right: 0,
                child: Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    color: context.palette.primaryButtonTextColor,
                    shape: BoxShape.circle,
                  ),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(24),
                    child: InkWell(
                      onTap: onEditProfileImageTap,
                      borderRadius: BorderRadius.circular(24),
                      child: Icon(
                        Icons.edit_outlined,
                        size: 16,
                        color: context.palette.iconColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            'Taylor Scott',
            style: AppTextStyles.ktsH4.copyWith(
              color: context.palette.primaryButtonTextColor,
            ),
          ),
          Text(
            'Melbourne, Australia',
            style: AppTextStyles.ktsSmall.copyWith(
              color: context.palette.primaryButtonTextColor,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 126,
              right: 126,
            ),
            child: PrimaryButton(
              text: S.of(context).ksEditProfile,
              backgroundColor: context.palette.primaryButtonTextColor,
              textColor: context.palette.primaryButtonColor,
              onTap: onEditProfileTap,
            ),
          ),
        ],
      ),
    );
  }
}
