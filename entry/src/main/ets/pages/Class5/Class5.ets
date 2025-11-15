import { router } from '@kit.ArkUI';
import { backButton } from '../../Components/backButton'
@Entry
@Component
struct Class5 {
  build() {
    Stack() {
      // 主要内容区域
      Column() {
        Scroll() {
          Column() {
            Column() {
              Text("Class5")
                .margin({
                  left: 20,
                  top:20,
                  bottom:10
                })
                .width('100%')
                .fontSize(25)
                .fontWeight(800)
              Row() {
                Button('Chapter7')
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Notes/Chapter7' }).then(() => {
                      console.info('Succeeded in jumping to Chapter 7.')
                    })
                  })
                  .backgroundColor(Color.Orange)
                  .margin(5)
                Button('Chapter8')
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Notes/Chapter8' }).then(() => {
                      console.info('Succeeded in jumping to Chapter 8.')
                    })
                  })
                  .backgroundColor(Color.Orange)
                  .margin(5)

              }
            }
            .margin({bottom:10})
            .width('100%')
            .justifyContent(FlexAlign.SpaceBetween)
            .borderRadius($r('sys.float.corner_radius_level4'))
            .backgroundColor(Color.Gray)

            Divider()
              .margin(20)

          }
          .width('100%')
        }
        .height('100%')
      }
      .width('95%')

      backButton()
    }
    .width('100%')
    .height('100%')
  }
}