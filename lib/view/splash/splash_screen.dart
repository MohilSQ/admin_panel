import 'package:admin_panel/res/common/app_scaffold.dart';
import 'package:admin_panel/res/constant/app_assets.dart';
import 'package:admin_panel/res/constant/app_theme.dart';
import 'package:admin_panel/res/constant/constant.dart';
import 'package:admin_panel/view/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Expanded(
        child: Column(
          children: [
            AppBar(
              actions: [
                _BrightnessButton(
                  handleBrightnessChange: controller.handleBrightnessChange,
                ),
                _Material3Button(
                  handleMaterialVersionChange: controller.handleMaterialVersionChange,
                ),
                _ColorSeedButton(
                  handleColorSelect: controller.handleColorSelect,
                  colorSelected: colorSelected,
                ),
              ],
            ),
            Center(
              child: Obx(() {
                return AnimatedOpacity(
                  opacity: controller.animationStart.value ? 1.0 : 0.0,
                  duration: const Duration(seconds: 2),
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    width: controller.animationStart.value ? MediaQuery.of(context).size.width * 0.22 : MediaQuery.of(context).size.width,
                    child: Image.asset(
                      AppAssets.appLogo,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class _BrightnessButton extends StatelessWidget {
  final Function handleBrightnessChange;
  const _BrightnessButton({required this.handleBrightnessChange});

  @override
  Widget build(BuildContext context) {
    final isBright = Theme.of(context).brightness == Brightness.light;
    return Tooltip(
      message: 'Toggle brightness',
      child: IconButton(
        icon: isBright ? const Icon(Icons.dark_mode_outlined) : const Icon(Icons.light_mode_outlined),
        onPressed: () => handleBrightnessChange(!isBright),
      ),
    );
  }
}

class _Material3Button extends StatelessWidget {
  final void Function() handleMaterialVersionChange;
  const _Material3Button({required this.handleMaterialVersionChange});

  @override
  Widget build(BuildContext context) {
    final useMaterial3 = Theme.of(context).useMaterial3;
    return Tooltip(
      message: 'Switch to Material ${useMaterial3 ? 2 : 3}',
      child: IconButton(
        icon: useMaterial3 ? const Icon(Icons.filter_2) : const Icon(Icons.filter_3),
        onPressed: handleMaterialVersionChange,
      ),
    );
  }
}

class _ColorSeedButton extends StatelessWidget {
  final void Function(int) handleColorSelect;
  final ColorSeed colorSelected;
  const _ColorSeedButton({required this.handleColorSelect, required this.colorSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.palette_outlined,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
      ),
      tooltip: 'Select a seed color',
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder: (context) {
        return List.generate(ColorSeed.values.length, (index) {
          ColorSeed currentColor = ColorSeed.values[index];

          return PopupMenuItem(
            value: index,
            enabled: currentColor != colorSelected,
            child: Wrap(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Icon(
                    currentColor == colorSelected ? Icons.color_lens : Icons.color_lens_outlined,
                    color: currentColor.color,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(currentColor.label),
                ),
              ],
            ),
          );
        });
      },
      onSelected: handleColorSelect,
    );
  }
}
