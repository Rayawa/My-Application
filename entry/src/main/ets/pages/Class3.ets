import { router } from '@kit.ArkUI';
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
  @Builder
  myline(){
    Text('1').height(50).width('33%').fontSize(16).backgroundColor(0xF5DEB3).textAlign(TextAlign.Start)
    Text('2').height(50).width('33%').fontSize(16).backgroundColor(0xD2B48C).textAlign(TextAlign.Center)
    Text('3').height(50).width('33%').fontSize(16).backgroundColor(0xF5DEB3).textAlign(TextAlign.End)
  }

  build() {
    Stack() {
      // 主要内容区域
      Column() {
        Scroll() {
          Column() {
            Column() {
              Text("Class3")
                .margin({
                  left: 20,
                  top:10
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
              .margin(20)

            Column() {
              Text("父子组件")
                .margin({
                  left: 20,
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

            Divider()
              .margin(20)

            Column({ space: 10 }) {
              Row() {
                // 宽度80 ,高度80 ,外边距20(蓝色区域），内边距10（白色区域）
                Row() {
                  Row()
                    .size({ width: '100%', height: '100%' })
                    .backgroundColor(Color.Yellow)
                }
                .width(80)
                .height(80)
                .padding(10)
                .margin(20)
                .backgroundColor(Color.White)
              }
              .backgroundColor(Color.Blue)
            }
            .width('100%')
            .margin({ top: 5 })

            Divider()
              .margin(20)

            Column({ space: 10 }) {
              Row() {  this.myline();  }
              .width('90%')
              .direction(Direction.Auto)

              // 父容器设置direction为Direction.Rtl，子元素从右到左排列
              Row() {  this.myline();    }
              .width('90%')
              .direction(Direction.Rtl)
            }
            .width('100%')
            .margin({ top: 5 })

            Divider()
              .margin(20)

            Column() {
              Column() {
                Text('None')
                  .fontSize(19)
                  .width('90%')
                  .fontColor(0xCCCCCC)
                // 隐藏不参与占位
                Row()
                  .visibility(Visibility.None)
                  .width('90%')
                  .height(80)
                  .backgroundColor(0xAFEEEE)
                // 隐藏参与占位
                Text('Hidden')
                  .fontSize(19)
                  .width('90%')
                  .fontColor(0xCCCCCC)
                Row()
                  .visibility(Visibility.Hidden)
                  .width('90%')
                  .height(80)
                  .backgroundColor(0xAFEEEE)
                // 正常显示，组件默认的显示模式
                Text('Visible')
                  .fontSize(19)
                  .width('90%')
                  .fontColor(0xCCCCCC)
                Row()
                  .visibility(Visibility.Visible)
                  .width('90%')
                  .height(80)
                  .backgroundColor(0xAFEEEE)
              }
              .width('90%')
              .border({ width: 1 })
            }
            .width('100%')
            .margin({ top: 5 })

            Divider()
              .margin(20)

            Column({ space: 5 }) {
              Row().width('90%').height(50).backgroundColor(0xE5E5E5).border({ width: 1 })
              Row()
                .backgroundImage($r('app.media.wuhan'), ImageRepeat.X)
                .backgroundImageSize({ width: '250px', height: '140px' })
                .width('90%').height(70).border({ width: 1 })
              Row()
                .backgroundImage($r('app.media.wuhan'), ImageRepeat.Y)
                .backgroundImageSize({ width: '500px', height: '120px' })
                .width('90%').height(100).border({ width: 1 })
              Row()
                .width(200).height(50) .backgroundImage($r('app.media.wuhan'), ImageRepeat.NoRepeat)
                .backgroundImageSize(ImageSize.Cover).border({ width: 1 })
            }.width('100%').height('100%').padding({ top: 5 })

          Divider()
            .margin(20)

        }
          .width('100%')
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