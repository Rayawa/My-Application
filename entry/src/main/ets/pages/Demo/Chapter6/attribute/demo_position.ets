@Entry
@Component
struct PositionExample {
  @Builder
  myLine(){
    Text('1').height(50).width('33%').fontSize(16).backgroundColor(0xF5DEB3).textAlign(TextAlign.Start)
    Text('2').height(50).width('33%').fontSize(16).backgroundColor(0xD2B48C).textAlign(TextAlign.Center)
    Text('3').height(50).width('33%').fontSize(16).backgroundColor(0xF5DEB3).textAlign(TextAlign.End)
  }

  build() {
    Column({ space: 10 }) {
      Row() {  this.myLine();  } .width('90%') .direction(Direction.Auto)

      // 父容器设置direction为Direction.Rtl，子元素从右到左排列
      Row() {  this.myLine();    }.width('90%') .direction(Direction.Rtl)
    }.width('100%').margin({ top: 5 })
  }
}
