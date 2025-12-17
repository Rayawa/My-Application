import { router } from '@kit.ArkUI';
import { backButton } from '../Components/backButton'

@Entry
@Component
struct Index {
  build() {
    Column(){
      Scroll(){
        Column() {

          Column() {
            Text('Ray\'s ArkTS Demo')
              .fontSize(30)
              .fontWeight(800)
            // Text('发烧了，早日康复!')
            //   .fontSize(30)
            //   .fontColor(Color.Red)
            //   .backgroundColor(Color.Grey)
            //   .margin({top:20})
            //2025.11.9-2025.11.13
            Divider()
              .margin(20)
            Column() {
              Text('学校微专业  Sep. ~ Nov., 2025')
                .textAlign(TextAlign.Start)
                .fontSize(22)
                .fontWeight(900)
                .width('100%')
                .margin(10)

              // 表头 - 使用固定比例
              Row() {
                Text('序号')
                  .width('15%')  // 固定比例
                  .textAlign(TextAlign.Center)
                  .fontWeight(700)
                  .fontSize(18)

                Text('时间')
                  .width('20%')  // 固定比例
                  .textAlign(TextAlign.Center)
                  .fontWeight(700)
                  .fontSize(18)

                Text('课堂')
                  .width('15%')  // 固定比例
                  .textAlign(TextAlign.Center)
                  .fontWeight(700)
                  .fontSize(18)

                Text('笔记章节')
                  .width('50%')  // 固定比例
                  .textAlign(TextAlign.Center)
                  .fontWeight(700)
                  .fontSize(18)
              }
              .width('100%')
              .height(40)
              .justifyContent(FlexAlign.SpaceBetween)

              // 第一行数据 - 使用相同比例
              Row() {
                Text('Class1')
                  .width('15%')
                  .textAlign(TextAlign.Center)

                Text('10/18')
                  .width('20%')
                  .textAlign(TextAlign.Center)

                Button('I')
                  .width('15%')
                  .margin(1)
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Class1/Class1' })
                  })
                  .height(30)
                  .backgroundColor(Color.Blue)

                Row() {
                  Button('Chap.1')
                    .layoutWeight(1)
                    .margin(1)
                    .onClick(() => {
                      router.pushUrl({ url: 'pages/Notes/Chapter1' })
                    })
                    .height(30)
                    .backgroundColor(Color.Orange)

                  Button('Chap.2')
                    .layoutWeight(1)
                    .margin(1)
                    .onClick(() => {
                      router.pushUrl({ url: 'pages/Notes/Chapter2' })
                    })
                    .height(30)
                    .backgroundColor(Color.Orange)
                }
                .width('50%')  // 与表头保持一致
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width('100%')
              .height(50)
              .justifyContent(FlexAlign.SpaceBetween)

              // Class2 数据行
              Row() {
                Text('Class2')
                  .width('15%')
                  .textAlign(TextAlign.Center)

                Text('10/25')
                  .width('20%')
                  .textAlign(TextAlign.Center)

                Button('II')
                  .width('15%')
                  .margin(1)
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Class2/Class2' })
                  })
                  .height(30)
                  .backgroundColor(Color.Blue)

                Row() {
                  Button('Chap.3')
                    .layoutWeight(1)
                    .margin(1)
                    .onClick(() => {
                      router.pushUrl({ url: 'pages/Notes/Chapter3' })
                    })
                    .height(30)
                    .backgroundColor(Color.Orange)

                  Button('Chap.4')
                    .layoutWeight(1)
                    .margin(1)
                    .onClick(() => {
                      router.pushUrl({ url: 'pages/Notes/Chapter4' })
                    })
                    .height(30)
                    .backgroundColor(Color.Orange)
                }
                .width('50%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width('100%')
              .height(50)
              .justifyContent(FlexAlign.SpaceBetween)

              // Class3 数据行
              Row() {
                Text('Class3')
                  .width('15%')
                  .textAlign(TextAlign.Center)

                Text('11/01')
                  .width('20%')
                  .textAlign(TextAlign.Center)

                Button('III')
                  .width('15%')
                  .margin(1)
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Class3/Class3' })
                  })
                  .height(30)
                  .backgroundColor(Color.Blue)

                Row() {
                  Button('Chap.5')
                    .layoutWeight(1)
                    .margin(1)
                    .onClick(() => {
                      router.pushUrl({ url: 'pages/Notes/Chapter5' })
                    })
                    .height(30)
                    .backgroundColor(Color.Orange)

                  Button('Chap.6')
                    .layoutWeight(1)
                    .margin(1)
                    .onClick(() => {
                      router.pushUrl({ url: 'pages/Notes/Chapter6' })
                    })
                    .height(30)
                    .backgroundColor(Color.Orange)
                }
                .width('50%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width('100%')
              .height(50)
              .justifyContent(FlexAlign.SpaceBetween)

              // Class4 数据行
              Row() {
                Text('Class4')
                  .width('15%')
                  .textAlign(TextAlign.Center)

                Text('11/09')
                  .width('20%')
                  .textAlign(TextAlign.Center)

                Button('IV')
                  .width('15%')
                  .margin(1)
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Class4/Class4' })
                  })
                  .height(30)
                  .backgroundColor(Color.Blue)

                Row() {
                  Button('Chap.6')
                    .layoutWeight(1)
                    .margin(1)
                    .onClick(() => {
                      router.pushUrl({ url: 'pages/Notes/Chapter6' })
                    })
                    .height(30)
                    .backgroundColor(Color.Orange)

                  Button('Chap.7')
                    .layoutWeight(1)
                    .margin(1)
                    .onClick(() => {
                      router.pushUrl({ url: 'pages/Notes/Chapter7' })
                    })
                    .height(30)
                    .backgroundColor(Color.Orange)
                }
                .width('50%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width('100%')
              .height(50)
              .justifyContent(FlexAlign.SpaceBetween)

              // Class5 数据行
              Row() {
                Text('Class5')
                  .width('15%')
                  .textAlign(TextAlign.Center)

                Text('11/16')
                  .width('20%')
                  .textAlign(TextAlign.Center)

                Button('V')
                  .width('15%')
                  .margin(1)
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Class5/Class5' })
                  })
                  .height(30)
                  .backgroundColor(Color.Blue)

                Row() {
                  Button('Chap.7')
                    .layoutWeight(1)
                    .margin(1)
                    .onClick(() => {
                      router.pushUrl({ url: 'pages/Notes/Chapter7' })
                    })
                    .height(30)
                    .backgroundColor(Color.Orange)

                  Button('Chap.8')
                    .layoutWeight(1)
                    .margin(1)
                    .onClick(() => {
                      router.pushUrl({ url: 'pages/Notes/Chapter8' })
                    })
                    .height(30)
                    .backgroundColor(Color.Orange)
                }
                .width('50%')
                .justifyContent(FlexAlign.SpaceBetween)
              }
              .width('100%')
              .height(50)
              .justifyContent(FlexAlign.SpaceBetween)
            }
            .width('100%')
            .padding(10)
            Row({space: 10}){
              Button('测试AI能力')
                .layoutWeight(1)
                .margin(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/ArkWeb' })
                })
                .height(30)
                .backgroundColor(Color.Orange)
              Button('左右手按钮')
                .layoutWeight(1)
                .margin(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/hand' })
                })
                .height(30)
                .backgroundColor(Color.Orange)
              Button('震动')
                .layoutWeight(1)
                .margin(1)
                .onClick(() => {
                  router.pushUrl({ url: 'pages/vibrate' })
                })
                .height(30)
                .backgroundColor(Color.Orange)

            }



            // Column() {
            //   Text(' 华为ICT')
            //     .textAlign(TextAlign.Start)
            //     .fontSize(22)
            //     .fontWeight(900)
            //     .width('100%')
            //     .margin(10)
            //   // 表头
            //   Row() {
            //     Text('课程内容')
            //       .layoutWeight(1) // 使用权重布局
            //       .textAlign(TextAlign.Center)
            //       .fontWeight(700)
            //       .fontSize(18)
            //       .border({ width: 0 })
            //     Text('上课时间')
            //       .layoutWeight(1)
            //       .textAlign(TextAlign.Center)
            //       .fontWeight(700)
            //       .fontSize(18)
            //       .border({ width: 0 })
            //     Text('Demo链接')
            //       .layoutWeight(1)
            //       .textAlign(TextAlign.Center)
            //       .fontWeight(700)
            //       .fontSize(18)
            //       .border({ width: 0 })
            //   }
            //   .width('100%')
            //   .height(40)
            //   .justifyContent(FlexAlign.SpaceBetween)
            //
            //   // 第一行数据
            //   Row() {
            //     Text('Java')
            //       .layoutWeight(1)
            //       .textAlign(TextAlign.Center)
            //       .border({ width: 0 })
            //     Text('2025/10/18')
            //       .layoutWeight(1)
            //       .textAlign(TextAlign.Center)
            //       .border({ width: 0 })
            //     Button('Class1')
            //       .layoutWeight(1)
            //       .onClick(() => {
            //         router.pushUrl({ url: 'pages/Class1/Class1' }).then(() => {
            //           console.info('Succeeded in jumping to the Class1 page.')
            //         })
            //       })
            //       .height(30)
            //       .backgroundColor(Color.Orange)
            //   }
            //   .width('100%')
            //   .height(50)
            //   .justifyContent(FlexAlign.SpaceBetween)
            //
            //   // 第二行数据
            //   Row() {
            //     Text('Python')
            //       .layoutWeight(1)
            //       .textAlign(TextAlign.Center)
            //       .border({ width: 0 })
            //     Text('2025/10/25')
            //       .layoutWeight(1)
            //       .textAlign(TextAlign.Center)
            //       .border({ width: 0 })
            //     Button('Class2')
            //       .layoutWeight(1)
            //       .onClick(() => {
            //         router.pushUrl({ url: 'pages/Class2/Class2' }).then(() => {
            //           console.info('Succeeded in jumping to the Class2 page.')
            //         })
            //       })
            //       .height(30)
            //       .backgroundColor(Color.Orange)
            //   }
            //   .width('100%')
            //   .height(50)
            //   .justifyContent(FlexAlign.SpaceBetween)
            //
            //   // 第三行数据
            //   Row() {
            //     Text('Rust')
            //       .layoutWeight(1)
            //       .textAlign(TextAlign.Center)
            //       .border({ width: 0 })
            //     Text('2025/11/01')
            //       .layoutWeight(1)
            //       .textAlign(TextAlign.Center)
            //       .border({ width: 0 })
            //     Button('Class3')
            //       .layoutWeight(1)
            //       .onClick(() => {
            //         router.pushUrl({ url: 'pages/Class3/Class3' }).then(() => {
            //           console.info('Succeeded in jumping to the Class3 page.')
            //         })
            //       })
            //       .height(30)
            //       .backgroundColor(Color.Orange)
            //   }
            //   .width('100%')
            //   .height(50)
            //   .justifyContent(FlexAlign.SpaceBetween)
            // }
            // .alignItems(HorizontalAlign.Center)
            // .width('100%')
            // .padding(10)
          }

          Divider()
        }.margin({top:50})
      }
    }

    .width('100%')
  }
}