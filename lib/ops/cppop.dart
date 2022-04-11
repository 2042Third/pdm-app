import 'package:flutter/services.dart';

class CppOp {
      
  CppOp()  {
    op_test();
  }

  Future<void> op_test() async {
    // trying to call c++ code for windows
    MethodChannel channel = MethodChannel('test_channel');
    var result = await channel.invokeMapMethod('test');
    print("C++ calling test:");
    print(result);
    print("end testing.");

  }
}
