import 'dart:math' as math;
import 'package:dartboot_annotation/dartboot_annotation.dart';

@Api('Simple test api')
@RestController('/simple_test')
class SimpleTestApi {

  @Api('Test get request')
  @Get('/api1')
  String api1() {
    return 'Api1';
  }

  @Api('Test post request and body')
  @Post('/api2')
  int api2(@body int req) {
    return req + math.Random().nextInt(99999);
  }
}
