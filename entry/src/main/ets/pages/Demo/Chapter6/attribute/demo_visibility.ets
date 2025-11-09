@Entry
@Component
struct VisibilityExample {
  build() {
    Column() {
      Column() {
        Text('None').fontSize(19).width('90%').fontColor(0xCCCCCC)
        // 隐藏不参与占位
        Row().visibility(Visibility.None).width('90%').height(80).backgroundColor(0xAFEEEE)
        // 隐藏参与占位
        Text('Hidden').fontSize(19).width('90%').fontColor(0xCCCCCC)
        Row().visibility(Visibility.Hidden).width('90%').height(80).backgroundColor(0xAFEEEE)
        // 正常显示，组件默认的显示模式
        Text('Visible').fontSize(19).width('90%').fontColor(0xCCCCCC)
        Row().visibility(Visibility.Visible).width('90%').height(80).backgroundColor(0xAFEEEE)
      }.width('90%').border({ width: 1 })
    }.width('100%').margin({ top: 5 })
  }
}
