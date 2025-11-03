import { router } from '@kit.ArkUI';

@Entry
@Component
struct Class4 {

  build() {
    Stack() {
      // 主要内容区域
      Column() {
        Scroll() {
          Column() {

          }
          .width('100%')
          .height('100%')
          .backgroundColor(Color.White)
        }
        .height('100%')
      }
      .width('95%')

      // 悬浮按钮
      Button() {
        Image($r('app.media.back'))
          .width(24)
          .height(24)
          .fillColor(Color.White)
      }
      .onClick(() => {
        router.back()
        console.info('Succeeded jumping back.')
      })
      .type(ButtonType.Circle)
      .backgroundColor($r('sys.color.point_color_checked'))
      .width(50)
      .height(50)
      .shadow({
        radius: 4,
        color: '#182431',
        offsetX: 2,
        offsetY: 4
      })
      .stateEffect(true)
      .position({
        x: 20,
        y: '90%'
      })
      .zIndex(999)
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}