@Entry
@Component
struct ControlPanel {
  @State currentWindSpeed: number = 3
  @State currentTemperature: number = 25
  @State isPowerOn: boolean = true

  private getTemperatureColor(temp: number): string {
    const clampedTemp = Math.max(16, Math.min(30, temp))
    const ratio = (clampedTemp - 16) / (30 - 16)

    const R = Math.round(ratio * 255)
    const B = Math.round((1 - ratio) * 255)

    const R_hex = R.toString(16).padStart(2, '0')
    const B_hex = B.toString(16).padStart(2, '0')

    return `#ff${R_hex}00${B_hex}`
  }

  build() {
    Column({ space: 5 }) {
      Text('空调控制器')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 15, bottom: 10 })

      this.PowerSwitch()

      Column() {
        Image(this.isPowerOn ? $r('app.media.air_conditioner') : $r('app.media.air_conditioner_close'))
          .width(120)
          .height(120)
          .borderRadius($r('sys.float.corner_radius_level7'))
      }
      .width(200)
      .height(200)
      .margin({bottom:30})
      .justifyContent(FlexAlign.Center)
      .alignItems(HorizontalAlign.Center)
      .backgroundColor(Color.White)
      .borderRadius($r('sys.float.corner_radius_level7'))

      if (this.isPowerOn) {
        this.WindSpeedControl()
        Column().margin(10)
        this.TemperatureControl()
      }
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#f5f5f5')
    .padding(10)
  }

  @Builder
  PowerSwitch() {
    Row({ space: 10 }) {
      Text(this.isPowerOn ? '已开启' : '已关闭')
        .fontSize(16)
        .fontColor(this.isPowerOn ? '#00A75D' : '#999999')

      Toggle({ type: ToggleType.Switch, isOn: this.isPowerOn })
        .onChange((isOn: boolean) => {
          this.isPowerOn = isOn
        })
    }
    .margin({ top: 10, bottom: 15 })
  }

  @Builder
  WindSpeedControl() {
    Text('风速控制')
      .fontSize(18)
      .fontWeight(FontWeight.Medium)
      .width('100%')
      .textAlign(TextAlign.Start)
    Column() {
      Row({ space: 10 }) {
        Column() {
          Image($r('app.media.speed_low'))
            .width(15)
        }
        .width(30)
        .height(30)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .backgroundColor(Color.White)

        Slider({
          value: this.currentWindSpeed,
          min: 1,
          max: 5,
          step: 1,
          style: SliderStyle.InSet
        })
          .selectedColor('#ffE9EAEC')
          .width('75%')
          .onChange((value: number) => {
            if (this.isPowerOn) {
              this.currentWindSpeed = Math.round(value)
            }
          })
        Column() {
          Image($r('app.media.speed_high'))
            .width(15)
        }
        .width(30)
        .height(30)
        .justifyContent(FlexAlign.Center)
        .alignItems(HorizontalAlign.Center)
        .backgroundColor(Color.White)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row({ space: 35 }) {
        Text('低')
          .fontSize(12)
          .fontColor(this.currentWindSpeed === 1 ? '#007DFF' : '#999999')
        Text('中低')
          .fontSize(12)
          .fontColor(this.currentWindSpeed === 2 ? '#007DFF' : '#999999')
        Text('中')
          .fontSize(12)
          .fontColor(this.currentWindSpeed === 3 ? '#007DFF' : '#999999')
        Text('中高')
          .fontSize(12)
          .fontColor(this.currentWindSpeed === 4 ? '#007DFF' : '#999999')
        Text('高')
          .fontSize(12)
          .fontColor(this.currentWindSpeed === 5 ? '#007DFF' : '#999999')
      }
      .width('80%')
      .justifyContent(FlexAlign.Center)
      .margin({ top: 5 })
    }
    .padding(15)
    .backgroundColor('#FFFFFF')
    .borderRadius(12)
    .margin({ left: 12, right: 12, top: 5, bottom: 5 })
    .width('100%')
  }

  @Builder
  TemperatureControl() {
    Text('温度控制')
      .fontSize(18)
      .fontWeight(FontWeight.Medium)
      .width('100%')
      .textAlign(TextAlign.Start)
    Column() {
      Row() {
        Text(`${this.currentTemperature}`)
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .fontColor(this.getTemperatureColor(this.currentTemperature))

        Text(' ℃')
          .fontSize(16)
          .fontColor(this.getTemperatureColor(this.currentTemperature))
          .margin({ top: 5 })
      }

      Row() {
        Text('冷')
          .fontSize(20)
          .fontWeight(800)
          .fontColor('#ff0000ff')
          .width(20)

        Slider({
          value: this.currentTemperature,
          min: 16,
          max: 30,
          step: 1,
          style: SliderStyle.InSet
        })
          .selectedColor(this.getTemperatureColor(this.currentTemperature))
          .trackColor(this.getTemperatureColor(this.currentTemperature))
          .width('75%')
          .onChange((value: number) => {
            if (this.isPowerOn) {
              this.currentTemperature = Math.round(value)
            }
          })

        Text('热')
          .fontSize(20)
          .fontWeight(800)
          .fontColor('#ffff0000')
          .width(20)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .padding(15)
    .backgroundColor('#FFFFFF')
    .borderRadius(12)
    .margin({
      left: 12,
      right: 12,
      top: 5,
      bottom: 5
    })
    .width('100%')
  }
}