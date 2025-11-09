@Entry
@Component
struct FocusEventExample {
  @State oneTextInputColor: string = '#FFC0CB'
  @State twoTextInputColor: string = '#87CEFA'

  build() {
    Column({ space: 20 }) {

      TextInput({placeholder:'First TextInput'}).backgroundColor(this.oneTextInputColor)
        .width(260).height(70).fontColor(Color.Black).focusable(true)
        .onFocus(() => {   this.oneTextInputColor = '#fff5ecec'    })
        .onBlur(() => {  this.oneTextInputColor = '#ffd0cccd'    })

      TextInput({placeholder:'Second TextInput'}).backgroundColor(this.twoTextInputColor)
        .width(260).height(70).fontColor(Color.Black).focusable(true)
        .onFocus(() => {    this.twoTextInputColor = '#fff5ecec'    })
        .onBlur(() => {    this.twoTextInputColor = '#ffd0cccd’'   })

    }.width('100%').margin({ top: 20 })
  }
}
