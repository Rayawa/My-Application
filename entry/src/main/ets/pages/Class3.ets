import { pluginComponentManager, router } from '@kit.ArkUI';
@Component
struct SonComponent {
  @Prop count: number;
  //@Link count: number;

  build() {
    Column() {
      Row() {
        Button(`子组件计数+1`).onClick(() => {
          this.count++;
        }).backgroundColor(Color.Orange)
        Text(`  子组件计数： ${this.count}`)
          .fontWeight(600)
          .fontSize(18)
      }
      .margin({bottom:10})
    }
  }
}

@Entry
@Component
struct Class3 {
  @State count2: number = 0;

  build() {
    Stack() {
      // 主要内容区域
      Column() {
        Scroll() {
          Column() {
            Column() {
              Text("11111111")
                .margin({
                  left: 20,
                  right: 10,
                  top: 10,
                  bottom: 10
                })
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

            Divider()
              .margin(30)

            Column() {
              Text("父子组件")
                .margin({
                  left: 20,
                  right: 10,
                  top: 10,
                  bottom: 10
                })
                .width('100%')
                .fontSize(25)
                .fontWeight(800)
              Row() {
                Button(`父组件计数+1`).onClick(() => {
                  this.count2 += 1;
                }).backgroundColor(Color.Orange)

                Text(`  父组件计数： ${this.count2}`)
                  .fontWeight(600)
                  .fontSize(18)
              }
              .margin({bottom:10})
              SonComponent({ count: this.count2 })
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