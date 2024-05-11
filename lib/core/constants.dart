final emailRegx = RegExp(
  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
);

final pswdRegx =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

const passwordValidationMsg =
    "Password must be at least 8 characters long and contain \nat least one special character, one uppercase letter, and \none numeric digit.";

const clientId =
    "427161689577-7rk6a1h54hn57hmfqc0o8gp5pmiluaa1.apps.googleusercontent.com";

List<String> scopes = <String>[
  'email',
  'https://www.googleapis.com/auth/contacts.readonly',
];
