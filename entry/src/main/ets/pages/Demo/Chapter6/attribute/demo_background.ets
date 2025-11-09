@Entry
@Component
struct BackgroundExample {
  build() {
    Column({ space: 5 }) {
      Row().width('90%').height(50).backgroundColor(0xE5E5E5).border({ width: 1 })
      Row()
        .backgroundImage($r('app.media.wuhan'), ImageRepeat.X)
        .backgroundImageSize({ width: '250px', height: '140px' })
        .width('90%').height(70).border({ width: 1 })
      Row()
        .backgroundImage($r('app.media.wuhan'), ImageRepeat.Y)
        .backgroundImageSize({ width: '500px', height: '120px' })
        .width('90%').height(100).border({ width: 1 })
      Row()
        .width(200).height(50) .backgroundImage($r('app.media.wuhan'), ImageRepeat.NoRepeat)
        .backgroundImageSize(ImageSize.Cover).border({ width: 1 })
    }.width('100%').height('100%').padding({ top: 5 })
  }
}
