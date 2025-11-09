@Entry
@Component
struct Textinput {
  @State password: string = '';  // 添加 @State 装饰器和初始值

  build() {
    Row() {
      Column() {
        TextInput({ placeholder: 'input your password' })
          .width(400)
          .height(60)
          .fontSize(40)
          .margin(20)
          .type(InputType.Password)
          .maxLength(18)
          .showPasswordIcon(true)
          .onChange((value: string) => {
            this.password = value
            console.log('password: ' + this.password)
          })
      }.width('100%')
    }.height('100%')
  }
}