import { media } from '@kit.MediaKit'
import { router } from '@kit.ArkUI'
import { webview } from '@kit.ArkWeb';
import prompt from '@ohos.prompt';

@Entry
@Component
struct Main {
  @State button:string='Click a button!'
  @State large:number=200
  @State count:number=7

  build() {
    // 使用 Stack 作为根容器
    Stack() {
      // 主要内容区域
      Column() {
        Scroll() {
          Column() {
            Column() {
              Row() {
                Button('Button 1')
                  .width('30%')
                  .margin(10)
                  .onClick(() => {
                      this.button='Button 1 clicked.'
                  })
                Button('Button 2')
                  .width('30%')
                  .margin(10)
                  .onClick(() => {
                      this.button='Button 2 clicked.'
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

            Text('视频')
              .textAlign(TextAlign.Start)
              .fontWeight(800)
              .fontSize(25)
              .width('100%')
              .margin(10)

            Stack() {
              Image($r('app.media.wuhan'))
                .alt('wuhan')
                .width('100%')

              Text('你好，武汉')
                .fontColor('#ff24207a')
                .fontSize(40)
                .fontWeight(900)

              Row() {
                Text('播放量：500万')
                  .fontColor(Color.White)
                  .margin({ right: 5 })

                Text('弹幕量：121万')
                  .fontColor(Color.White)
              }
              .position({ x: '8%', y: '80%' })
            }
            .borderRadius($r('sys.float.corner_radius_level4'))
            .backgroundColor(Color.Gray)
            .width('90%')
            .aspectRatio(1.5)
            .margin(10)


            Divider()
              .margin(20)

            Column() {
              Text(' 调整大小')
                .margin(10)
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
                    if (this.large <= 100) {
                      prompt.showToast({
                        message: '不能再缩小啦',
                        duration: 1000
                      });
                      return
                    }
                    this.large -= 30
                  })
                Button('+')
                  .margin(10)
                  .backgroundColor(Color.Red)
                  .onClick(() => {
                    if (this.large >= 380) {
                      prompt.showToast({
                        message: '不能再放大啦',
                        duration: 1000
                      });
                      return
                    }
                    this.large += 30
                  })

              }
              Image($r('app.media.pic'))
                .width(this.large)
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
              if(this.count>0){Text('Positive').fontColor(Color.Green)}
              if(this.count<0){Text('Negative').fontColor(Color.Red)}
              if(this.count==0){Text('Zero').fontColor(Color.Blue)}
            }
            .margin(10)
            .width('100%')
            .borderRadius($r('sys.float.corner_radius_level4'))
            .backgroundColor(Color.Gray)

          }
          .backgroundColor(Color.Transparent)
          .width('90%')
          .padding(10)
          .margin(20)
          .alignItems(HorizontalAlign.Center)
        }
        .width('100%')
        .height('100%')
        .backgroundColor(Color.White)
      }
      .width('100%')
      .height('100%')

      // 悬浮按钮 - 定位到左下角
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
      .position({ // 使用绝对定位
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