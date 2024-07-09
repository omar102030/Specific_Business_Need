import '../../../../core/networking/api_result.dart';

import '../models/login_request_body.dart';
import '../models/login_response.dart';

class LoginRepo {
  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    //? suppose that the api call is successful
    return ApiResult.success(LoginResponse(
        message: '',
        status: true,
        code: 200,
        data: UserData(token: 'token', userName: 'Omar Hamdy')));
  }
}
