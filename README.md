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

## Success run.

You will see something like this at your run console.

```text
Config file is: ./resource/config.yaml.
[2021-05-29 17:10:14:776 :default:8080:] [U: T:] [INFO] DartBootApplication: Start to scan annotated classes in application...
[2021-05-29 17:10:14:782 :default:8080:] [U: T:] [INFO] DartBootApplication: Dynamic class -> [BuildContext] loaded.
[2021-05-29 17:10:14:782 :default:8080:] [U: T:] [INFO] DartBootApplication: RestController scan finished. Total 3 controllers.
[2021-05-29 17:10:14:782 :default:8080:] [U: T:] [INFO] DartBootApplication: RestController: Symbol("EurekaClientEndpoint") registered.
[2021-05-29 17:10:14:782 :default:8080:] [U: T:] [INFO] DartBootApplication: RestController: Symbol("SimpleTestApi") registered.
[2021-05-29 17:10:14:782 :default:8080:] [U: T:] [INFO] DartBootApplication: RestController: Symbol("SimpleTestApi") registered.
[2021-05-29 17:10:14:782 :default:8080:] [U: T:] [INFO] DartBootApplication: All annotated classes scanned.
[2021-05-29 17:10:14:782 :default:8080:] [U: T:] [INFO] HttpServer: Bind api:[GET /health] to controller:[Symbol("EurekaClientEndpoint")]
[2021-05-29 17:10:14:783 :default:8080:] [U: T:] [INFO] HttpServer: Bind api:[POST /shutdown] to controller:[Symbol("EurekaClientEndpoint")]
[2021-05-29 17:10:14:783 :default:8080:] [U: T:] [INFO] HttpServer: Bind api:[POST /register] to controller:[Symbol("EurekaClientEndpoint")]
[2021-05-29 17:10:14:783 :default:8080:] [U: T:] [INFO] HttpServer: Bind api:[GET /db_test/api1] to controller:[Symbol("SimpleTestApi")]
[2021-05-29 17:10:14:783 :default:8080:] [U: T:] [INFO] HttpServer: Bind api:[GET /simple_test/api1] to controller:[Symbol("SimpleTestApi")]
[2021-05-29 17:10:14:783 :default:8080:] [U: T:] [INFO] HttpServer: Bind api:[POST /simple_test/api2] to controller:[Symbol("SimpleTestApi")]
[2021-05-29 17:10:14:783 :default:8080:] [U: T:] [INFO] HttpServer: Start to bind http server to local host...
[2021-05-29 17:10:14:783 :default:8080:] [U: T:] [INFO] HttpServer: Server started on port:8080 and context path:[/example/api].
[2021-05-29 17:10:14:783 :default:8080:] [U: T:] [INFO] DartBootApplication: Application startup completed.
```

To build a completely server application, please visit `DartBoot` organization home page.
