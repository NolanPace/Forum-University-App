// FILE: lib/auth/presentation/create_account_screen.dart

import 'package:flutter/material.dart';

import '../../core/auth/auth_session.dart';
import '../../identity/models/account_type.dart';
import '../../institutions/presentation/add_institution_screen.dart';

class CreateAccountScreen
    extends StatefulWidget {
  const CreateAccountScreen({
    super.key,
  });

  @override
  State<CreateAccountScreen> createState() =>
      _CreateAccountScreenState();
}

class _CreateAccountScreenState
    extends State<CreateAccountScreen> {
  AccountType? selected;

  final nameController =
      TextEditingController();

  final emailController =
      TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    super.dispose();
  }

  void submit() {
    if (selected == null ||
        nameController.text.trim().isEmpty ||
        emailController.text.trim().isEmpty) {
      return;
    }

    AuthSession.instance.createAccount(
      name: nameController.text.trim(),
      email: emailController.text.trim(),
      accountType: selected!,
    );

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (_) =>
            const AddInstitutionScreen(
          firstInstitution: true,
        ),
      ),
      (_) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          const Text(
            'Create your Portico account',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 24),
          _TypeTile(
            title: 'Student',
            icon: Icons.school_outlined,
            selected:
                selected == AccountType.student,
            onTap: () {
              setState(() {
                selected = AccountType.student;
              });
            },
          ),
          const SizedBox(height: 12),
          _TypeTile(
            title: 'Educator',
            icon: Icons.co_present_outlined,
            selected:
                selected == AccountType.educator,
            onTap: () {
              setState(() {
                selected = AccountType.educator;
              });
            },
          ),
          const SizedBox(height: 24),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'Full name',
            ),
          ),
          const SizedBox(height: 14),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              labelText: 'Personal email',
              helperText:
                  'This does not need to be a university email.',
            ),
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: submit,
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }
}

class _TypeTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  const _TypeTile({
    required this.title,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final primary =
        Theme.of(context).colorScheme.primary;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(22),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: selected
              ? primary.withValues(alpha: .08)
              : Colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: selected
                ? primary
                : Colors.grey.shade300,
            width: selected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Icon(icon, size: 32),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}