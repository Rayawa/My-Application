@Entry
@Component
struct EnabledExample {

  build() {
    Column({space:10}) {
      // 点击没有反应
      Button('disable').fontSize(50).enabled(false).backgroundColor(Color.Gray).opacity(0.4)
      Button('enable').fontSize(50).backgroundColor(Color.Blue)
    }
    .margin( 10 )
    .width('100%')
    .alignItems(HorizontalAlign.Center)
  }
}
