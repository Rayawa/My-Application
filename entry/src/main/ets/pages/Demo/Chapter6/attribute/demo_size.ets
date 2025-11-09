@Entry
@Component
struct SizeExample {
  build() {
    Column({ space: 10 }) {
      Row() {
        // 宽度80 ,高度80 ,外边距20(蓝色区域），内边距10（白色区域）
        Row() {
          Row().size({ width: '100%', height: '100%' }).backgroundColor(Color.Yellow)
        }
        .width(80) .height(80)
        .padding(10).margin(20)
        .backgroundColor(Color.White)
      }.backgroundColor(Color.Blue)
    }.width('100%').margin({ top: 5 })
  }
}
