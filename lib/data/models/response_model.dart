class ResponseModel{
  bool _isSuccess;
  String _message;
  //cannot use underscore and {} and required keyword
  ResponseModel(this._message, this._isSuccess);
  String get message=>_message;
  bool get isSuccess=>_isSuccess;

}