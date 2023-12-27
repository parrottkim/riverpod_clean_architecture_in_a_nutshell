import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/page/search/search_dialog.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class ProductSearchBarWidget extends StatelessWidget {
  const ProductSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showGeneralDialog(
          context: context, pageBuilder: (context, _, __) => SearchDialog()),
      borderRadius: BorderRadius.circular(8.0),
      child: IgnorePointer(
        child: OutlinedTextField(
          prefixIcon: Icons.search,
          contentPadding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          hintText: Intl.message('product_hint'),
        ),
      ),
    );
  }
}
