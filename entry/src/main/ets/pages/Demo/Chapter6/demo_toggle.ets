import promptAction from '@ohos.promptAction';

@Entry
@Component
struct ToggleExample {
  build() {
    Row() {
      Column() {
        Toggle({ type: ToggleType.Switch })
          .width(100)
          .height(50)
          .selectedColor(Color.Pink)
          .switchPointColor(Color.Blue)
          .onChange((isOn: boolean) => {
            if (isOn) {
              promptAction.showToast({ message: 'Toggle is on.' })
            } else {
              promptAction.showToast({ message: 'Toggle is off.' })
            }
          })
      }.width('100%')
    }.height('100%')
  }
}
