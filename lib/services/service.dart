import 'package:http/http.dart' as http;

// ----STRINGS---//
const baseURL = 'https://job.rd-lab.work/api';
final client = http.Client();

//----ERROR-----//
const servererror = 'Server Error';
const unauthorized = 'Unauthorized';
const somethigwentwrong = 'Something went wrong, try again!';
