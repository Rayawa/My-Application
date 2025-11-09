@Entry
@Component
struct SwiperExample {
  build() {
    Swiper() {
      Image($r("app.media.wuhan"))
      Image($r("app.media.wuhan2"))
      Image($r("app.media.wuhan3"))
    } .width('94%').height(200).margin(10).borderRadius(10)
    .loop(true) .autoPlay(true) .interval(1000)
    .indicatorStyle({
      size: 30,
      color: Color.Red,
    })
    .onChange((index: number)=>{
      console.log("index:",index)
    })
  }
}
