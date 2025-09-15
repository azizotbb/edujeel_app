class Validators {
  /// Validates verificationCode format

  static String? verificationCode(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'codeReq';
    }
    // if (!RegExp(r'^\d{6}$').hasMatch(value)) {
    //   return 'The code must be 6 digits';
    // }
    return null;
  }

  /// Validates numberPhone format

  static String? numberPhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'phoneReq';
    }
    if (value.length == 10) {
      return null;
    } else {
      return 'phoneValid';
    }
  }

  /// Validates email format
  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'emailReq';
    }
    if (!RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+.[a-zA-Z]{2,4}$',
    ).hasMatch(value)) {
      return 'emailFormat';
    }
    return null;
  }

  static String? username(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'nameReq';
    }
    if (value.length > 13) {
      return 'nameLess';
    }
    return null;
  }

  static String? validateCourseTitle(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Required';
    }
    if (value.length > 15) {
      return 'courseUnder';
    }
    if (value.length < 5) {
      return 'courseAbove';
    }
    return null;
  }

  static String? validateTraineesNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Required';
    }
    if (int.parse(value) > 5) {
      return 'maxTrainee';
    }
    if (int.parse(value) < 1) {
      return 'atLest';
    }
    return null;
  }

  static String? validatePrice(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Required';
    }
    if (int.parse(value) > 10000) {
      return 'maxPrice';
    }
    return null;
  }

  /// Validates password strength
  static String? password(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'enterPass';
    }
    if (value.length < 8) {
      return 'passLeast';
    }
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return 'passCap';
    }
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return 'passSmall';
    }
    if (!RegExp(r'\d').hasMatch(value)) {
      return 'passDigit';
    }
    if (!RegExp(r'[!@#\$&*~]').hasMatch(value)) {
      return 'passSpe';
    }
    return null;
  }

  /// Validates confirm-password matches the original
  static String? confirmPassword(String? value, String pass1) {
    if (value == null || value.trim().isEmpty) {
      return 'passConf';
    }
    if (value != pass1) {
      return 'passMatch';
    }
    return null;
  }
}
