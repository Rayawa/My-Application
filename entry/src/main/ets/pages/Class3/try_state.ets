import { router } from '@kit.ArkUI';

@Entry
@Component
struct state {
  @State count:number=0;
  build() {
    Stack() {
      // 主要内容区域
      Column() {
              Button(`click times: ${this.count}`)
                .onClick(() => {
                  this.count += 1;
            })
      }
      .width('95%')

      // 真正的悬浮按钮 - 固定在左下角
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
        x: 20, // 距离左边20vp
        y: '90%' // 距离顶部90%，即靠近底部
      })
      .zIndex(999) // 确保按钮在最上层
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}