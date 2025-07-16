// lib/Data/Response/ApiResponse.dart
import 'Status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  String? message;

  // Ye main constructor hai
  ApiResponse(this.status, this.data, this.message);

  // Ye named constructors hain jo code ko saaf rakhenge

  // Loading state ke liye constructor
  ApiResponse.loading() : status = Status.LOADING;

  // Completed (success) state ke liye constructor
  // Ismein hum data pass karenge jo API se mila hai
  ApiResponse.completed(this.data) : status = Status.COMPLETED;

  // Error state ke liye constructor
  // Ismein hum error ka message pass karenge
  ApiResponse.error(this.message) : status = Status.ERROR;

  // toString method debugging ke liye bohot madadgar hota hai
  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}