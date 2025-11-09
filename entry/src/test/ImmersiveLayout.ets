// /Components/ImmersiveLayout.ets
import { Immersive } from '../Components/ImmersiveHelper';
import common from '@ohos.app.ability.common';

@Component
export struct ImmersiveLayout {
  @State topSafeHeight: number = 60;

  @BuilderParam content: () => void;

  aboutToAppear() {
    let context = getContext(this) as common.Context;
    Immersive.applyImmersive(context).then((height: number) => {
      this.topSafeHeight = height;
    });
  }

  build() {
    Column() {
      // 安全区域占位
      Row()
        .width('100%')
        .height(this.topSafeHeight)
        .backgroundColor('#00000000')

      // 用户内容
      this.content()
    }
    .width('100%')
    .height('100%')
  }
}