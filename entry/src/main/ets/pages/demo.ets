import { prompt, router } from '@kit.ArkUI';

@Entry
@Component
struct demo {
  build() {
    Stack() {
      // 主要内容区域
      Column() {
        Scroll() {
          Column() {
            Text('Title Example')
              .margin({ left: 20, right: 10, top: 10, bottom:10 })
              .width('100%')
              .fontSize(25)
              .fontWeight(800)
            Column() {
              Text('Column Example')
                .margin({ left: 20, right: 10, top: 10, bottom:10 })
                .width('100%')
                .fontSize(25)
                .fontWeight(800)
              Text('TextTextTextTextTextTextTextTextTextTextTextTextTextTextText')
                .margin({ left: 20, right: 10, top: 10, bottom:10 })
            }
            .width('100%')
            .backgroundColor(Color.Gray)
            .borderRadius($r('sys.float.corner_radius_level4'))

            Row(){
              Button() {
                Text('Link Example')
                .fontSize(25)
                .fontWeight(FontWeight.Bold)
              }
              .type(ButtonType.Capsule)
              .margin({ top: 20 })
              .backgroundColor(Color.Orange)
              .width('35%')
              .height('5%')
              .onClick(() => {
                router.pushUrl({ url: 'pages/demo' }).then(() => {
                  console.info('Succeeded in jumping to the demo page.')
                })
              })
            Button() {
              Text('Alert Example')
                .fontSize(25)
                .fontWeight(FontWeight.Bold)
            }
            .type(ButtonType.Capsule)
            .margin({ top: 20 })
            .backgroundColor(Color.Orange)
            .width('35%')
            .height('5%')
            .onClick(() => {
              prompt.showToast({
                message: 'Alert Demo',
                duration: 2000})
            })
            }
            Divider()
              .margin(30)
          }
          .width('100%')
          .backgroundColor(Color.White)
        }
        .height('100%')
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