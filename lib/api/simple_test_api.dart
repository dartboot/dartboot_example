import 'dart:math' as math;
import 'package:dartboot_annotation/dartboot_annotation.dart';

/// 基础Test接口类
@RestController('/simple_test')
class SimpleTestApi {

  @Api('测试查询接口')
  @Get('/api1')
  String api1() {
    return 'Api1';
  }

  @Api('测试Post接口，以及读取请求体')
  @Post('/api2')
  int api2(@body int req) {
    return req + math.Random().nextInt(99999);
  }
}
