import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/ProgressHUD.dart';
import 'package:snippet_coder_utils/hex_color.dart';
import 'package:snippet_coder_utils/FormHelper.dart';
// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();
}

class PersonData {
  String? name = '';
  String? phoneNumber = '';
  String? email = '';
  String password = '';
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    Key? key,
    this.restorationId,
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.focusNode,
    this.textInputAction,
  }) : super(key: key);

  final String? restorationId;
  final Key? fieldKey;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> with RestorationMixin {
  final RestorableBool _obscureText = RestorableBool(true);

  @override
  String? get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_obscureText, 'obscure_text');
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      restorationId: 'password_text_field',
      obscureText: _obscureText.value,
      maxLength: 8,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        filled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        // suffixIcon: IconButton(
        //   onPressed: () {
        //     setState(() {
        //       _obscureText.value = !_obscureText.value;
        //     });
        //   },
        //   hoverColor: Colors.transparent,
        //   icon: Icon(
        //     _obscureText.value ? Icons.visibility : Icons.visibility_off,
        //     semanticLabel: _obscureText.value
        //         ? GalleryLocalizations.of(context)!
        //             .demoTextFieldShowPasswordLabel
        //         : GalleryLocalizations.of(context)!
        //             .demoTextFieldHidePasswordLabel,
        //   ),
        // ),
      ),
    );
  }
}

class LoginPageState extends State<LoginPage> with RestorationMixin {
  PersonData person = PersonData();

  late FocusNode _phoneNumber, _email, _lifeStory, _password, _retypePassword;

  @override
  void initState() {
    super.initState();
    _phoneNumber = FocusNode();
    _email = FocusNode();
    _lifeStory = FocusNode();
    _password = FocusNode();
    _retypePassword = FocusNode();
  }

  @override
  void dispose() {
    _phoneNumber.dispose();
    _email.dispose();
    _lifeStory.dispose();
    _password.dispose();
    _retypePassword.dispose();
    super.dispose();
  }

  void showInSnackBar(String value) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(value),
    ));
  }

  @override
  String get restorationId => 'text_field_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_autoValidateModeIndex, 'autovalidate_mode');
  }

  final RestorableInt _autoValidateModeIndex =
      RestorableInt(AutovalidateMode.disabled.index);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      GlobalKey<FormFieldState<String>>();
  final _UsNumberTextInputFormatter _phoneNumberFormatter =
      _UsNumberTextInputFormatter();

  void _handleSubmitted() {
    final form = _formKey.currentState!;
    // if (!form.validate()) {
    //   _autoValidateModeIndex.value =
    //       AutovalidateMode.always.index; // Start validating on every change.
    //   showInSnackBar(
    //      GalleryLocalizations.of(context)!.demoTextFieldFormErrors,
    //   );
    // } else {
    //   form.save();
    //   showInSnackBar(GalleryLocalizations.of(context)!
    //       .demoTextFieldNameHasPhoneNumber(person.name!, person.phoneNumber!));
    // }
  }

  String? _validateName(String? value) {
    // if (value == null || value.isEmpty) {
    //   return GalleryLocalizations.of(context)!.demoTextFieldNameRequired;
    // }
    // final nameExp = RegExp(r'^[A-Za-z ]+$');
    // if (!nameExp.hasMatch(value)) {
    //   return GalleryLocalizations.of(context)!
    //       .demoTextFieldOnlyAlphabeticalChars;
    // }
    // return null;
  }

  // String? _validatePhoneNumber(String? value) {
  //   final phoneExp = RegExp(r'^\(\d\d\d\) \d\d\d\-\d\d\d\d$');
  //   if (!phoneExp.hasMatch(value!)) {
  //     return GalleryLocalizations.of(context)!.demoTextFieldEnterUSPhoneNumber;
  //   }
  //   return null;
  // }

  // String? _validatePassword(String? value) {
  //   final passwordField = _passwordFieldKey.currentState!;
  //   if (passwordField.value == null || passwordField.value!.isEmpty) {
  //     return GalleryLocalizations.of(context)!.demoTextFieldEnterPassword;
  //   }
  //   if (passwordField.value != value) {
  //     return GalleryLocalizations.of(context)!.demoTextFieldPasswordsDoNotMatch;
  //   }
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    const sizedBoxSpace = SizedBox(height: 24);
    // final localizations = GalleryLocalizations.of(context)!;

    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.values[_autoValidateModeIndex.value],
      child: Scrollbar(
        child: SingleChildScrollView(
          restorationId: 'text_field_demo_scroll_view',
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              sizedBoxSpace,
              TextFormField(
                restorationId: 'name_field',
                textInputAction: TextInputAction.next,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  filled: true,
                  icon: const Icon(Icons.person),
                  // hintText: localizations.demoTextFieldWhatDoPeopleCallYou,
                  // labelText: localizations.demoTextFieldNameField,
                ),
                onSaved: (value) {
                  person.name = value;
                  _phoneNumber.requestFocus();
                },
                validator: _validateName,
              ),
              sizedBoxSpace,
              TextFormField(
                restorationId: 'phone_number_field',
                textInputAction: TextInputAction.next,
                focusNode: _phoneNumber,
                decoration: InputDecoration(
                  filled: true,
                  icon: const Icon(Icons.phone),
                  // hintText: localizations.demoTextFieldWhereCanWeReachYou,
                  // labelText: localizations.demoTextFieldPhoneNumber,
                  prefixText: '+1 ',
                ),
                keyboardType: TextInputType.phone,
                onSaved: (value) {
                  person.phoneNumber = value;
                  _email.requestFocus();
                },
                maxLength: 14,
                maxLengthEnforcement: MaxLengthEnforcement.none,
                //validator: _validatePhoneNumber,
                // TextInputFormatters are applied in sequence.
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                  // Fit the validating format.
                  _phoneNumberFormatter,
                ],
              ),
              sizedBoxSpace,
              TextFormField(
                restorationId: 'email_field',
                textInputAction: TextInputAction.next,
                focusNode: _email,
                decoration: InputDecoration(
                  filled: true,
                  icon: const Icon(Icons.email),
                  // hintText: localizations.demoTextFieldYourEmailAddress,
                  // labelText: localizations.demoTextFieldEmail,
                ),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  person.email = value;
                  _lifeStory.requestFocus();
                },
              ),
              sizedBoxSpace,
              TextFormField(
                restorationId: 'life_story_field',
                focusNode: _lifeStory,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  // hintText: localizations.demoTextFieldTellUsAboutYourself,
                  // helperText: localizations.demoTextFieldKeepItShort,
                  // labelText: localizations.demoTextFieldLifeStory,
                ),
                maxLines: 3,
              ),
              sizedBoxSpace,
              TextFormField(
                restorationId: 'salary_field',
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  // labelText: localizations.demoTextFieldSalary,
                  // suffixText: localizations.demoTextFieldUSD,
                ),
                maxLines: 1,
              ),
              sizedBoxSpace,
              PasswordField(
                restorationId: 'password_field',
                textInputAction: TextInputAction.next,
                focusNode: _password,
                fieldKey: _passwordFieldKey,
                // helperText: localizations.demoTextFieldNoMoreThan,
                // labelText: localizations.demoTextFieldPassword,
                onFieldSubmitted: (value) {
                  setState(() {
                    person.password = value;
                    _retypePassword.requestFocus();
                  });
                },
              ),
              sizedBoxSpace,
              TextFormField(
                restorationId: 'retype_password_field',
                focusNode: _retypePassword,
                decoration: InputDecoration(
                  filled: true,
                  //labelText: localizations.demoTextFieldRetypePassword,
                ),
                maxLength: 8,
                obscureText: true,
                //validator: _validatePassword,
                onFieldSubmitted: (value) {
                  _handleSubmitted();
                },
              ),
              sizedBoxSpace,
              Center(
                child: ElevatedButton(
                  onPressed: _handleSubmitted,
                  child: Text(
                    '',
                    // localizations.demoTextFieldSubmit
                  ),
                ),
              ),
              sizedBoxSpace,
              Text(
                '',
                //localizations.demoTextFieldRequiredField,
                style: Theme.of(context).textTheme.caption,
              ),
              sizedBoxSpace,
            ],
          ),
        ),
      ),
    );
  }
}

/// Format incoming numeric text to fit the format of (###) ###-#### ##
class _UsNumberTextInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final newTextLength = newValue.text.length;
    final newText = StringBuffer();
    var selectionIndex = newValue.selection.end;
    var usedSubstringIndex = 0;
    if (newTextLength >= 1) {
      newText.write('(');
      if (newValue.selection.end >= 1) selectionIndex++;
    }
    if (newTextLength >= 4) {
      newText.write('${newValue.text.substring(0, usedSubstringIndex = 3)}) ');
      if (newValue.selection.end >= 3) selectionIndex += 2;
    }
    if (newTextLength >= 7) {
      newText.write('${newValue.text.substring(3, usedSubstringIndex = 6)}-');
      if (newValue.selection.end >= 6) selectionIndex++;
    }
    if (newTextLength >= 11) {
      newText.write('${newValue.text.substring(6, usedSubstringIndex = 10)} ');
      if (newValue.selection.end >= 10) selectionIndex++;
    }
    // Dump the rest.
    if (newTextLength >= usedSubstringIndex) {
      newText.write(newValue.text.substring(usedSubstringIndex));
    }
    return TextEditingValue(
      text: newText.toString(),
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}
