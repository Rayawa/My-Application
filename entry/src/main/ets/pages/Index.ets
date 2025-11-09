import { router } from '@kit.ArkUI';
import { backButton } from '../Components/backButton'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Column(){Text(' ')}
      Column() {
        Text('Ray\'s ArkTS Demo')
          .fontSize(30)
          .fontWeight(800)
        Divider()
          .margin(20)
        Column() {
          Text(' 学校微专业')
            .textAlign(TextAlign.Start)
            .fontSize(22)
            .fontWeight(900)
            .width('100%')
            .margin(10)
          // 表头
          Row() {
            Text('课程内容')
              .layoutWeight(1) // 使用权重布局
              .textAlign(TextAlign.Center)
              .fontWeight(700)
              .fontSize(18)
              .border({ width: 0 })
            Text('上课时间')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .fontWeight(700)
              .fontSize(18)
              .border({ width: 0 })
            Text('Demo链接')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .fontWeight(700)
              .fontSize(18)
              .border({ width: 0 })
          }
          .width('100%')
          .height(40)
          .justifyContent(FlexAlign.SpaceBetween)

          // 第一行数据
          Row() {
            Text('第一二章')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .border({ width: 0 })
            Text('2025/10/18')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .border({ width: 0 })
            Button('Class1')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Class1/Class1' }).then(() => {
                  console.info('Succeeded in jumping to the Class1 page.')
                })
              })
              .height(30)
              .backgroundColor(Color.Orange)
          }
          .width('100%')
          .height(50)
          .justifyContent(FlexAlign.SpaceBetween)

          // 第二行数据
          Row() {
            Text('第三四章')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .border({ width: 0 })
            Text('2025/10/25')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .border({ width: 0 })
            Button('Class2')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Class2/Class2' }).then(() => {
                  console.info('Succeeded in jumping to the Class2 page.')
                })
              })
              .height(30)
              .backgroundColor(Color.Orange)
          }
          .width('100%')
          .height(50)
          .justifyContent(FlexAlign.SpaceBetween)

          // 第三行数据
          Row() {
            Text('第五六章')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .border({ width: 0 })
            Text('2025/11/01')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .border({ width: 0 })
            Button('Class3')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Class3/Class3' }).then(() => {
                  console.info('Succeeded in jumping to the Class3 page.')
                })
              })
              .height(30)
              .backgroundColor(Color.Orange)
          }
          .width('100%')
          .height(50)
          .justifyContent(FlexAlign.SpaceBetween)

          //第四行数据
          Row() {
            Text('第111章')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .border({ width: 0 })
            Text('2025/11/01')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .border({ width: 0 })
            Button('Class4')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Class4/Class4' }).then(() => {
                  console.info('Succeeded in jumping to the Class4 page.')
                })
              })
              .height(30)
              .backgroundColor(Color.Orange)
          }
          .width('100%')
          .height(50)
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .alignItems(HorizontalAlign.Center)
        .width('100%')
        .padding(10)

        Divider()
          .margin(20)

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
    }
    .width('100%')
  }
}