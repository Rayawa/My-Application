@Entry
@Component
struct LotteryGame {
  // 奖品数据
  @State prizes: string[] = ['一等奖', '二等奖', '三等奖', '谢谢参与', '幸运奖', '再来一次']
  @State colors: string[] = ['#fffd8686', '#ffab9b53', '#ff4ad145', '#ff3291b8', '#FFEAA7', '#DDA0DD']

  // 转盘相关状态
  @State isSpinning: boolean = false
  @State rotation: number = 0
  @State result: string = ''

  // 九宫格相关状态
  @State isGridSpinning: boolean = false
  @State activeIndex: number = -1
  @State gridResult: string = ''

  // 抽奖历史
  @State history: string[] = []

  build() {
    Scroll() {
        Column({ space: 20 }) {
          Text('幸运抽奖')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
            .fontColor('#666')
            .margin({ top: 30 })
          Grid() {
            ForEach(this.prizes, (item: string, index: number) => {
              GridItem() {
                Column({ space: 5 }) {
                  Text(item)
                    .fontSize(12)
                    .fontColor(Color.White)
                    .fontWeight(FontWeight.Bold)
                    .textAlign(TextAlign.Center)
                }
                .width('100%')
                .height('100%')
                .justifyContent(FlexAlign.Center)
                .backgroundColor(this.activeIndex === index ? '#FF6B6B' : this.colors[index % this.colors.length])
                .borderRadius(8)
              }
            }, (item: string) => item)
          }
          .columnsTemplate('1fr 1fr 1fr')
          .rowsTemplate('1fr 1fr 1fr')
          .columnsGap(10)
          .rowsGap(10)
          .width(300)
          .height(300)
          .margin({ top: 10, bottom: 10 })

          Button(this.isGridSpinning ? '抽奖中...' : '开始抽奖')
            .width(150)
            .height(40)
            .backgroundColor(this.isGridSpinning ? '#CCC' : '#007DFF')
            .fontColor(Color.White)
            .fontSize(16)
            .borderRadius(20)
            .onClick(() => {
              if (!this.isGridSpinning) {
                this.startGridSpinning()
              }
            })
            .enabled(!this.isGridSpinning)

          if (this.result !== '' || this.gridResult !== '') {
            Column({ space: 10 }) {
              Text('抽奖结果')
                .fontSize(18)
                .fontWeight(FontWeight.Bold)
                .fontColor('#333')

              Text(this.result !== '' ? this.result : this.gridResult)
                .fontSize(24)
                .fontColor('#FF6B6B')
                .fontWeight(FontWeight.Bold)
            }
            .padding(15)
            .backgroundColor('#F5F5F5')
            .borderRadius(10)
            .width('90%')
            .margin({ top: 20 })
          }

          // 抽奖历史
          if (this.history.length > 0) {
            Column({ space: 10 }) {
              Text('抽奖历史')
                .fontSize(18)
                .fontWeight(FontWeight.Bold)
                .fontColor('#333')
                .width('100%')
                .textAlign(TextAlign.Start)

              ForEach(this.history, (item: string, index: number) => {
                Text(`${index + 1}. ${item}`)
                  .fontSize(14)
                  .fontColor('#666')
                  .width('100%')
                  .textAlign(TextAlign.Start)
              }, (item: string) => item)
            }
            .padding(15)
            .backgroundColor('#F5F5F5')
            .borderRadius(10)
            .width('90%')
            .margin({ top: 20 })
          }
        }
        .width('100%')
        .padding(20)
        .backgroundColor('#F8F8F8')
        .alignItems(HorizontalAlign.Center)
        .justifyContent(FlexAlign.Start)

    }
    .height("100%")
  }

  startGridSpinning() {
    this.isGridSpinning = true
    this.gridResult = ''
    this.activeIndex = -1

    // 随机决定最终位置
    const randomIndex = Math.floor(Math.random() * this.prizes.length)

    // 模拟转动的动画效果
    let count = 0
    const maxCount = 20
    const interval = setInterval(() => {
      this.activeIndex = (this.activeIndex + 1) % this.prizes.length
      count++

      if (count >= maxCount) {
        clearInterval(interval)
        // 最终停在随机位置
        this.activeIndex = randomIndex
        this.gridResult = `恭喜获得：${this.prizes[randomIndex]}`
        this.history.unshift(`幸运抽奖 - ${this.prizes[randomIndex]}`)
        this.isGridSpinning = false
      }
    }, 100)
  }
}