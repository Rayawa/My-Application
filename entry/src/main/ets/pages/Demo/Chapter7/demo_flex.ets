@Entry
@Component
struct FlexExample1 {
  build() {
    Column({ space: 5 }) {

      Flex({ direction: FlexDirection.Row }) {
        Text('1').width('20%').height(50).backgroundColor(0xF5DEB3)
        Text('2').width('20%').height(50).backgroundColor(0xD2B48C)
        Text('3').width('20%').height(50).backgroundColor(0xF5DEB3)
        Text('4').width('20%').height(50).backgroundColor(0xD2B48C)
      }.height(70).width('90%').padding(10).backgroundColor(0xAFEEEE)

      Flex({ direction: FlexDirection.ColumnReverse }) {
        Text('1').width('100%').height(40).backgroundColor(0xF5DEB3)
        Text('2').width('100%').height(40).backgroundColor(0xD2B48C)
        Text('3').width('100%').height(40).backgroundColor(0xF5DEB3)
        Text('4').width('100%').height(40).backgroundColor(0xD2B48C)
      }.height(160).width('90%').padding(10).backgroundColor(0xAFEEEE)

    }.width('100%').margin({ top: 5 })
  }
}
