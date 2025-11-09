import { router } from '@kit.ArkUI';
import { backButton } from '../../Components/backButton'
@Entry
@Component
struct Class4 {
  build() {
    Stack() {
      // 主要内容区域
      Column() {
        Scroll() {
          Column() {
            Column() {
              Text("Class4")
                .margin({
                  left: 20,
                  top:10
                })
                .width('100%')
                .fontSize(25)
                .fontWeight(800)
              Row() {
                Button('笔记')
                  .onClick(() => {
                    router.pushUrl({ url: 'pages/Notes/Chapter6' }).then(() => {
                      console.info('Succeeded in jumping to Chapter 6.')
                    })
                  })
                  .backgroundColor(Color.Orange)
                  .margin(20)

              }
            }
            .margin(10)
            .width('100%')
            .borderRadius($r('sys.float.corner_radius_level4'))
            .backgroundColor(Color.Gray)

            Divider()
              .margin(20)

          }
          .width('100%')
          .backgroundColor(Color.White)
        }
        .height('100%')
      }
      .width('95%')

      backButton()
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.White)
  }
}