import { media } from '@kit.MediaKit'
import { router } from '@kit.ArkUI'
import { webview } from '@kit.ArkWeb';
import prompt from '@ohos.prompt';

@Entry
@Component
struct Class2 {
  @State button: string = 'Click a button!'
  @State large: number = 200
  @State count: number = 7
  @State toggle: boolean = false
  @State value: number = -1

  build() {
    // 使用 Stack 作为根容器
    Stack() {
      // 主要内容区域 - 可滚动
      Column() {
        Scroll() {
          Column() {
            Column() {
              Text('左右切换')
                .margin(10)
                .width('100%')
                .fontSize(25)
                .fontWeight(800)
              Row() {
                Button('Button 1')
                  .width('30%')
                  .margin(10)
                  .onClick(() => {
                    this.button = 'Button 1 clicked.'
                  })
                Button('Button 2')
                  .width('30%')
                  .margin(10)
                  .onClick(() => {
                    this.button = 'Button 2 clicked.'
                  })
              }

              Text(this.button)
                .width('100%')
                .textAlign(TextAlign.Center)
                .fontColor(Color.Orange)
                .fontSize(20)
                .margin(10)
            }
            .width('100%')
            .backgroundColor(Color.Gray)
            .borderRadius($r('sys.float.corner_radius_level4'))

            Divider()
              .margin(10)

            Text('国庆作业')
              .margin(10)
              .width('100%')
              .fontSize(25)
              .fontWeight(800)

            Stack() {
              Image($r('app.media.wuhan'))
                .alt('wuhan')
                .width('100%')
                .borderRadius($r('sys.float.corner_radius_level5'))

              Text('你好，武汉')
                .fontColor('#ff1a3667')
                .fontSize(50)
                .fontWeight(900)


              Row() {
                Text('播放量：500万')
                  .fontColor(Color.White)
                  .margin({ right: 5 })

                Text('弹幕量：121万')
                  .fontColor(Color.White)
              }
              .position({ x: '2%', y: '90%' })
            }
            .borderRadius($r('sys.float.corner_radius_level4'))
            .backgroundColor(Color.Gray)
            .width('95%')
            .aspectRatio(1.5)
            .margin(10)

            Divider()
              .margin(20)

            Column() {
              Text('调整大小')
                .margin({ left: 20, right: 10, top: 10, bottom:10 })
                .width('100%')
                .fontSize(25)
                .fontWeight(800)
              Text('Powered by DJI')
                .width('100%')
                .textAlign(TextAlign.Start)
                .border({ width: 1 })
                .padding(10)
                .margin(10)
                .fontColor(Color.Red)
              Row() {
                Button('-')
                  .margin(10)
                  .backgroundColor(Color.Red)
                  .onClick(() => {
                    if (this.large <= 160) {
                      prompt.showToast({
                        message: '不能再缩小啦',
                        duration: 1000
                      });
                      return
                    }
                    this.large -= 20
                  })
                Button('+')
                  .margin(10)
                  .backgroundColor(Color.Red)
                  .onClick(() => {
                    if (this.large >= 340) {
                      prompt.showToast({
                        message: '不能再放大啦',
                        duration: 1000
                      });
                      return
                    }
                    this.large += 20
                  })
              }

              Image($r('app.media.pic'))
                .width(this.large)
                .borderRadius($r('sys.float.corner_radius_level4'))
            }
            .width('100%')
            .borderRadius($r('sys.float.corner_radius_level4'))
            .backgroundColor(Color.Gray)

            Column() {
              Row() {
                Button('-10')
                  .margin(10)
                  .backgroundColor(Color.Green)
                  .onClick(() => {
                    this.count -= 10
                  })
                Button('-1')
                  .margin(10)
                  .backgroundColor(Color.Green)
                  .onClick(() => {
                    this.count -= 1
                  })
                Button('+1')
                  .margin(10)
                  .backgroundColor(Color.Green)
                  .onClick(() => {
                    this.count += 1
                  })
                Button('+10')
                  .margin(10)
                  .backgroundColor(Color.Green)
                  .onClick(() => {
                    this.count += 10
                  })
              }

              Text(`count=${this.count}`)
              if (this.count > 0) {
                Text('Positive').fontColor(Color.Green)
              }
              if (this.count < 0) {
                Text('Negative').fontColor(Color.Red)
              }
              if (this.count == 0) {
                Text('Zero').fontColor(Color.Blue)
              }
            }
            .margin(10)
            .width('100%')
            .borderRadius($r('sys.float.corner_radius_level4'))
            .backgroundColor(Color.Gray)

            Column() {
              Row() {
                if (this.toggle) {
                  Text('').fontColor(Color.Green)
                } else {
                  Text('').fontColor(Color.Black)
                }
              }
              .width('100%')
              .padding({ left: '10', right: '10' })
            }
            .margin(10)
            .width('100%')
            .borderRadius($r('sys.float.corner_radius_level4'))
            .backgroundColor(Color.Gray)

            Divider()
              .margin(20)

            Column({ space: 20 }) {
              Text('考试结果查询')
                .margin(10)
                .width('100%')
                .fontSize(25)
                .fontWeight(800)

              TextInput({ placeholder: '输入成绩' })
                .onChange((value) => {
                  this.value = value.length == 0 ? 1 : Number.parseInt(value);
                })

              if (this.value < 0) {
                Row() {
                  Text('考试结果：')
                  Text('请输入成绩')
                  Blank()
                }
              }
              if (this.value >= 0 && this.value < 60) {
                Row() {
                  Text('考试结果：')
                  Text('未通过').fontColor(Color.Red)
                  Blank()
                }
              }
              if (this.value >= 60 && this.value <= 100) {
                Row() {
                  Text('考试结果：')
                  Text('通过').fontColor(Color.Green)
                  Blank()
                }
              }
              if (this.value > 100) {
                Row() {
                  Text('考试结果：')
                  Text('输入不符合规范').fontColor(Color.Red)
                  Blank()
                }
              }
              Column(){Text('').margin(10)}
            }
            .margin(10)
            .width('100%')
            .borderRadius($r('sys.float.corner_radius_level4'))
            .backgroundColor(Color.Gray)

            Divider()
              .margin(20)

            Column(){
              Text('渲染控制')
                .margin(10)
                .width('100%')
                .fontSize(25)
                .fontWeight(800)
              Row() {
                Button('抽奖')
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Class2/lottery' }).then(() => {
                      console.info('Succeeded in jumping to the lottery page.')
                    })
                  })
                  .backgroundColor(Color.Orange)
                  .margin(20)
                Button('登陆')
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Class2/login' }).then(() => {
                      console.info('Succeeded in jumping to the login page.')
                    })
                  })
                  .backgroundColor(Color.Orange)
                  .margin(20)
              }
              .margin(10)
            }
            .margin(10)
            .width('100%')
            .borderRadius($r('sys.float.corner_radius_level4'))
            .backgroundColor(Color.Gray)

          }
          .width('100%')
          .backgroundColor(Color.White)
        }
        .width('95%')
        .height('100%')
      }
      .width('95%')
      .height('100%')

      // 悬浮按钮 - 放在 Stack 中，与主要内容区域平级
      Button() {
        Image($r('app.media.back'))
          .width(24)
          .height(24)
          .fillColor(Color.White)
      }
      .onClick(() => {
        router.back()
        console.info('Succeeded in jumping to the index page.')
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