import 'package:flutter/material.dart';

import '../../../l10n/app_localizations.dart';
import '../data/endpoint_dtos.dart';

typedef EndpointFormValue = ({
  String name,
  String url,
  List<String> eventTypes,
  bool enabled,
});

Future<EndpointFormValue?> showEndpointFormDialog(
  BuildContext context, {
  EndpointDto? endpoint,
}) {
  return showDialog<EndpointFormValue>(
    context: context,
    builder: (context) => _EndpointFormDialog(endpoint: endpoint),
  );
}

final class _EndpointFormDialog extends StatefulWidget {
  const _EndpointFormDialog({this.endpoint});

  final EndpointDto? endpoint;

  @override
  State<_EndpointFormDialog> createState() => _EndpointFormDialogState();
}

class _EndpointFormDialogState extends State<_EndpointFormDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _name;
  late final TextEditingController _url;
  late final TextEditingController _eventTypes;
  late bool _enabled;

  @override
  void initState() {
    super.initState();
    _name = TextEditingController(text: widget.endpoint?.name);
    _url = TextEditingController(text: widget.endpoint?.url);
    _eventTypes = TextEditingController(
      text: widget.endpoint?.eventTypes.join(', '),
    );
    _enabled = widget.endpoint?.enabled ?? true;
  }

  @override
  void dispose() {
    _name.dispose();
    _url.dispose();
    _eventTypes.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(
        widget.endpoint == null ? l10n.createEndpoint : l10n.editEndpoint,
      ),
      content: SizedBox(
        width: 520,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: _name,
                autofocus: true,
                decoration: InputDecoration(labelText: l10n.name),
                validator: _required,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _url,
                keyboardType: TextInputType.url,
                decoration: InputDecoration(labelText: l10n.url),
                validator: _validateUrl,
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _eventTypes,
                decoration: InputDecoration(labelText: l10n.eventTypes),
                validator: _required,
              ),
              if (widget.endpoint != null)
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(l10n.enabled),
                  value: _enabled,
                  onChanged: (value) => setState(() => _enabled = value),
                ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(l10n.cancel),
        ),
        FilledButton(onPressed: _submit, child: Text(l10n.save)),
      ],
    );
  }

  String? _required(String? value) {
    return value == null || value.trim().isEmpty
        ? AppLocalizations.of(context).requiredField
        : null;
  }

  String? _validateUrl(String? value) {
    final requiredError = _required(value);
    if (requiredError != null) return requiredError;
    final uri = Uri.tryParse(value!.trim());
    return uri != null && uri.hasScheme && uri.host.isNotEmpty
        ? null
        : AppLocalizations.of(context).invalidUrl;
  }

  void _submit() {
    if (_formKey.currentState?.validate() != true) return;
    Navigator.pop(context, (
      name: _name.text.trim(),
      url: _url.text.trim(),
      eventTypes: _eventTypes.text
          .split(',')
          .map((value) => value.trim())
          .where((value) => value.isNotEmpty)
          .toList(),
      enabled: _enabled,
    ));
  }
}
