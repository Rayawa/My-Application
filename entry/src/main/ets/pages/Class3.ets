import { router } from '@kit.ArkUI';

@Entry
@Component
struct Class3 {

  build() {
    Stack() {
      // 主要内容区域
      Column() {
        Scroll() {
          Column() {
            Column() {
              Text("11111111")
                .margin({ left: 20, right: 10, top: 10, bottom:10 })
                .width('100%')
                .fontSize(25)
                .fontWeight(800)
              Row() {
                Button('空调遥控器')
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Class3/airConditioner' }).then(() => {
                      console.info('Succeeded in jumping to the air conditioner page.')
                    })
                  })
                  .backgroundColor(Color.Orange)
                  .margin(20)
                Button('懒加载')
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Class3/lazyForEach' }).then(() => {
                      console.info('Succeeded in jumping to the lazyForEach page.')
                    })
                  })
                  .backgroundColor(Color.Orange)
                  .margin(20)
              }
            }
            .margin(10)
            .width('100%')
            .borderRadius($r('sys.float.corner_radius_level4'))
            .backgroundColor(Color.Gray)
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