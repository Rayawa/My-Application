@Entry
@Component
struct ClickExample {
  @State text: string = ''

  build() {
    Column() {
      Row({ space: 20 }) {
        Button('Click').width(200).height(50)
          .onClick((event: ClickEvent) => {
            this.text = 'Click Point:' + '\n  screenX:' + event.screenX + '\n  screenY:' + event.screenY
              + '\n  x:' + event.x + '\n  y:' + event.y + '\ntarget:' + '\n  component globalPos:('
              + event.target.area.globalPosition.x + ',' + event.target.area.globalPosition.y + ')\n  width:'
              + event.target.area.width + '\n  height:' + event.target.area.height + '\ntimestamp' + event.timestamp;
          })
      }.margin(20)
      Text(this.text).margin(15)
    }.width('100%')
  }
}
