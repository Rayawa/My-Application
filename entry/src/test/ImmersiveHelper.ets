// Components/ImmersiveHelper.ets
import window from '@ohos.window';
import common from '@ohos.app.ability.common';

export class Immersive {
  static async applyImmersive(context: common.Context): Promise<number> {
    try {
      // 设置沉浸式
      let windowClass: window.Window = await window.getLastWindow(context);
      await windowClass.setWindowSystemBarProperties({
        statusBarColor: '#00000000',
        navigationBarColor: '#00000000',
        statusBarContentColor: '#FFFFFFFF',
        navigationBarContentColor: '#FFFFFFFF'
      });

      // 获取状态栏高度
      let avoidArea: window.AvoidArea = await windowClass.getWindowAvoidArea(window.AvoidAreaType.TYPE_SYSTEM);
      return avoidArea.topRect.height;
    } catch (err) {
      console.error('Immersive error:' + JSON.stringify(err));
      return 60; // 默认高度
    }
  }
}