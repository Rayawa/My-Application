@Entry
@Component
struct StateExample {
  @State count:number=0;
  build() {
      Column() {
              Button(`click times: ${this.count}`)
                .onClick(() => {
                  this.count += 1;
            })
      }
      .width('95%')
  }
}