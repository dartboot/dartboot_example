# A example to use DartBoot cloud.


## Firstly, create `lib/main.dart` file to build a server entry

```dart
import 'package:dartboot_core/dartboot_core.dart';
import 'package:dartboot_annotation/dartboot_annotation.dart';
import 'main.g.dart';

@dba
void main(args) {
  DartBoot.run(); // Ensure this invoked in main function
}
```

Annotations cloud be found in `dartboot_annotation` lib.

## Secondly, create yourself api

```dart
import 'dart:math' as math;
import 'package:dartboot_annotation/dartboot_annotation.dart';

/// 基础Test接口类
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
```

## Importantly, add `resource/config.yaml` file to project root, and config it for this application.

More detail to see `dartboot_core` lib.

To build a completely server application, please visit `DartBoot` organization home page.
