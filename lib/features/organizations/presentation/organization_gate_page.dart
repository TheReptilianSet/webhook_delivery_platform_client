import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../app/app_router.dart';
import '../../../core/presentation/common_widgets.dart';
import '../../../core/presentation/view_status.dart';
import '../../../l10n/app_localizations.dart';
import 'organization_cubit.dart';
import 'organization_state.dart';

final class OrganizationGatePage extends StatefulWidget {
  const OrganizationGatePage({super.key});

  @override
  State<OrganizationGatePage> createState() => _OrganizationGatePageState();
}

class _OrganizationGatePageState extends State<OrganizationGatePage> {
  @override
  void initState() {
    super.initState();
    if (context.read<OrganizationCubit>().state.status == ViewStatus.initial) {
      context.read<OrganizationCubit>().load();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<OrganizationCubit, OrganizationState>(
        listenWhen: (previous, current) =>
            previous.selected?.id != current.selected?.id,
        listener: (context, state) {
          if (state.selected case final organization?) {
            DeliveriesRoute(organizationId: organization.id).go(context);
          }
        },
        builder: (context, state) => switch (state.status) {
          ViewStatus.initial || ViewStatus.loading => const LoadingView(),
          ViewStatus.empty => EmptyView(
            message: AppLocalizations.of(context).emptyOrganizations,
          ),
          ViewStatus.failure => FailureView(
            failure: state.failure!,
            onRetry: context.read<OrganizationCubit>().load,
          ),
          ViewStatus.success => const LoadingView(),
        },
      ),
    );
  }
}
