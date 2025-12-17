
import { router } from '@kit.ArkUI'

@Component
export struct backButton {
  build() {
    // 使用绝对定位，但不覆盖整个屏幕
    Button() {
      Image($r('app.media.back'))
        .width(24)
        .height(24)
    }
    .onClick(() => {
      router.back()
      console.info('Succeeded jumping back.')
    })
    .type(ButtonType.Circle)
    .backgroundColor('#007DFF')
    .width(50)
    .height(50)
    .shadow({
      radius: 4,
      color: '#182431',
      offsetX: 2,
      offsetY: 4
    })
    .stateEffect(true)
    .position({ x: 20, y: '90%' })
    .zIndex(999)
    .hitTestBehavior(HitTestMode.Transparent)
  }
}