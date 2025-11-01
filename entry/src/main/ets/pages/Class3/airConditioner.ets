import { router } from '@kit.ArkUI';
import sendableColorSpaceManager from '@ohos.graphics.sendableColorSpaceManager';

@Entry
@Component
struct airConditioner {
  @State isOn: boolean = false // 空调开关状态
  @State currentTemp: number = 22 // 当前温度
  @State currentWind: number = 2

  build() {
    Stack() {
      // 主要内容区域
      Column() {
        Scroll() {
          Column() {
            // 显示空调状态和温度
            Text(this.isOn ? `空调已开启 ${this.currentTemp}℃` : "空调已关闭")
              .fontSize(20)
              .margin({ bottom: 20 })

            // 温度调节按钮
            Row() {
              Button('降温')
                .onClick(() => {
                  if (this.isOn) {
                    this.currentTemp--
                  }
                })
                .margin({left:20})
              Button('升温')
                .onClick(() => {
                  if (this.isOn) {
                    this.currentTemp++
                  }
                })
            }
            Row() {
              Button('风量小')
                .onClick(() => {
                  if (this.isOn) {
                    this.currentWind--
                  }
                })
                .margin({left:20})
              Button('风量打')
                .onClick(() => {
                  if (this.isOn) {
                    this.currentWind++
                  }
                })
            }

            // 电源开关
            Toggle({ type: ToggleType.Switch, isOn: this.isOn })
              .onChange((value: boolean) => {
                this.isOn = value
                // 调用控制接口，下发开关机指令
                console.log(`空调状态变为: ${value ? '开' : '关'}`)
              })
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