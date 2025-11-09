import {  Button, router } from '@kit.ArkUI'
@Component
export struct backButton {
  // 默认配置参数
  private buttonSize: number = 50
  private positionX: number = 20
  private positionY: string | number = '90%'
  private shadowColor: string | Resource = '#182431'
  private iconColor: Color | Resource | string = Color.White

  build() {
    Stack() {
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
      .width(this.buttonSize)
      .backgroundColor('#007DFF')
      .height(this.buttonSize)
      .shadow({
        radius: 4,
        color: this.shadowColor,
        offsetX: 2,
        offsetY: 4
      })
      .stateEffect(true)
      .position({
        x: this.positionX,
        y: this.positionY
      })
      .zIndex(999)
    }
    .width('100%')
    .height('100%')
  }

  // 设置按钮大小
  setButtonSize(size: number): backButton {
    this.buttonSize = size
    return this
  }

  // 设置位置
  setPosition(x: number, y: string | number): backButton {
    this.positionX = x
    this.positionY = y
    return this
  }

  // 设置阴影颜色
  setShadowColor(color: string | Resource): backButton {
    this.shadowColor = color
    return this
  }

  // 设置图标颜色
  setIconColor(color: Resource | string): backButton {
    this.iconColor = color
    return this
  }
}