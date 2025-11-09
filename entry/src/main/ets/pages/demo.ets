import { prompt, router } from '@kit.ArkUI';
import { backButton } from '../Components/backButton'

@Entry
@Component
struct demo {
  build() {
    Stack() {
      // 主要内容区域
      Column() {
        Scroll() {
          Column() {
            Text('Title Example')
              .margin({ left: 20, right: 10, top: 10, bottom:10 })
              .width('100%')
              .fontSize(25)
              .fontWeight(800)
            Column() {
              Text('Column Example')
                .margin({ left: 20, right: 10, top: 10, bottom:10 })
                .width('100%')
                .fontSize(25)
                .fontWeight(800)
              Text('TextTextTextTextTextTextTextTextTextTextTextTextTextTextText')
                .margin({ left: 20, right: 10, top: 10, bottom:10 })
            }
            .width('100%')
            .backgroundColor(Color.Gray)
            .borderRadius($r('sys.float.corner_radius_level4'))

            Row(){
              Button() {
                Text('Link Example')
                .fontSize(25)
                .fontWeight(FontWeight.Bold)
              }
              .type(ButtonType.Capsule)
              .margin({ top: 20 })
              .backgroundColor(Color.Orange)
              .width('35%')
              .height('5%')
              .onClick(() => {
                router.pushUrl({ url: 'pages/demo' }).then(() => {
                  console.info('Succeeded in jumping to the demo page.')
                })
              })
            Button() {
              Text('Alert Example')
                .fontSize(25)
                .fontWeight(FontWeight.Bold)
            }
            .type(ButtonType.Capsule)
            .margin({ top: 20 })
            .backgroundColor(Color.Orange)
            .width('35%')
            .height('5%')
            .onClick(() => {
              prompt.showToast({
                message: 'Alert Demo',
                duration: 2000})
            })
            }
            Divider()
              .margin(30)
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
    .backgroundColor(Color.White)
  }
}