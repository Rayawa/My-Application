@Entry
@Component
struct text {
  @State title: string = '点我';
  build() {
    Column() {
      Text(this.title)
        .margin(30)
        .fontSize(30)
        .backgroundColor(Color.Blue)
        .fontColor(Color.White)
        .padding(10)
        .onTouch((event: TouchEvent) => {
          if (event.type === TouchType.Down) {
            this.title = 'Down'
          }
          if (event.type === TouchType.Up) {
            this.title = 'Up'
          }
          if (event.type === TouchType.Move) {
            this.title = 'Move'
          }
        })
    }
  }
}
