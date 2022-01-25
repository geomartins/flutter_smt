import 'dart:async';
import 'package:cruz/utils/validators.dart';
import 'package:rxdart/rxdart.dart';

class RegisterBloc extends Object with Validators {
  final BehaviorSubject _firstname = BehaviorSubject<String>();
  final BehaviorSubject _middlename = BehaviorSubject<String>();
  final BehaviorSubject _lastname = BehaviorSubject<String>();

  final BehaviorSubject _email = BehaviorSubject<String>();
  final BehaviorSubject _password = BehaviorSubject<String>();

  final BehaviorSubject _department = BehaviorSubject<String>();
  final BehaviorSubject _departmentList =  BehaviorSubject<List<String>>();

  final BehaviorSubject _isLoading = BehaviorSubject<bool>();
  final BehaviorSubject _passwordVisibility = BehaviorSubject<bool>();

  void firstnameSink(String value) {
    _firstname.sink.add(value);
  }

  void middlenameSink(String value) {
    _middlename.sink.add(value);
  }

  void lastnameSink(String value) {
    _lastname.sink.add(value);
  }

  void departmentSink(String value) {
    _department.sink.add(value);
  }

  void departmentListSink(List<String> value) {
    _departmentList.sink.add(value);
  }

  void emailSink(String value) {
    _email.sink.add(value);
  }

  void passwordSink(String value) {
    _password.sink.add(value);
  }

  void loadingSink(bool value) {
    _isLoading.sink.add(value);
  }

  void passwordVisibilitySink(bool value) {
    _passwordVisibility.sink.add(value);
  }

  Stream<String> get firstname =>
      _firstname.stream.transform(validateFirstname);
  Stream<String> get middlename =>
      _firstname.stream.transform(validateMiddlename);
  Stream<String> get lastname => _firstname.stream.transform(validateLastname);

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);
  Stream get isLoading => _isLoading.stream;
  Stream get passwordVisibility => _passwordVisibility.stream;
  Stream get department => _department.stream;
  Stream get departmentList => _departmentList.stream;

  Stream<bool> get submitValid => Rx.combineLatest6(firstname, middlename,
      lastname, email, password, department, (f, m, l, e, p, d) => true);

  void fetchDepartmentList() async {
    // List<String> result = await FirestoreService().getDepartmentList();
    // print('Department List Result $result');
    // departmentListSink(result);
  }

  Future<void> submit() async {
    final String validFirstname = _firstname.value;
    final String validMiddlename = _middlename.value;
    final String validLastname = _lastname.value;
    final String validEmail = _email.value;
    final String validPassword = _password.value;
    final String validDepartment = _department.value;

    try {
      // await AuthService().createAccount(
      //     email: validEmail.toLowerCase(),
      //     password: validPassword,
      //     firstname: validFirstname.toLowerCase(),
      //     lastname: validLastname.toLowerCase(),
      //     middlename: validMiddlename.toLowerCase(),
      //     department: validDepartment);
    } catch (e) {
      rethrow;
    }
  }

  void dispose() {
    _firstname.close();
    _middlename.close();
    _lastname.close();

    _department.close();
    _departmentList.close();
    _email.close();
    _password.close();
    _isLoading.close();
    _passwordVisibility.close();
  }
}