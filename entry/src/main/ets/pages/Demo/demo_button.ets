@Entry
@Component
struct Index {
  @State message1: string = '大'
  @State message2: string = '小'
  @State fontSize: number = 30;
  @State wid: number = 60;
  private isGrowing = true;
  build() {

    Row() {
      Column() {
        Row(){
          Button('Circle')
            .type(ButtonType.Circle)
            .margin(5)
          Button('Capsule')
            .type(ButtonType.Capsule)
            .margin(5)
          Button('Normal')
            .type(ButtonType.Normal)
            .margin(5)
        }
        .margin(10)

        Button(this.isGrowing ? this.message1 : this.message2)
          .width(this.wid)
          .height(this.wid)
          .backgroundColor(0x317aff)
          .fontSize(this.fontSize)
          .type(ButtonType.Circle)
          .stateEffect(true)
          .onClick( () => {
            if (this.isGrowing) {
              this.fontSize += 10;
              this.wid += 20;
              if (this.wid >= 400) {
                this.isGrowing = false;
              }
            } else {
              this.fontSize -= 10;
              this.wid -= 20;
              if (this.wid <= 50) {
                this.isGrowing = true;
              }
            }
          } )
      }
      .width('100%')
    }
    .height('100%')
  }
}
