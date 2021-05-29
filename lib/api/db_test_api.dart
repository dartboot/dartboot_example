import 'package:dartboot_annotation/dartboot_annotation.dart';
import 'package:dartboot_mysql/dartboot_mysql.dart';
import 'package:dartboot_db/dartboot_db.dart';
import 'package:dartboot_util/dartboot_util.dart';

/// 数据库Test接口类
@RestController('/db_test')
class SimpleTestApi {
  @Api('测试查询接口')
  @Get('/api1')
  Future api1(@Query('name') String name,
      @Query('size', defaultValue: 2) int size) async {
    final db = await MysqlClientHelper.getClient('dev');
    var res = await db.executePage(
        SqlBuilder().from('t_user').like('nickName', name).query(),
        PageRequest.of(0, size));
    return res;
  }
}
