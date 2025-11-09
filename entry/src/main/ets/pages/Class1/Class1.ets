import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';
import { backButton } from '../../Components/backButton'

@Entry
@Component
struct Class1 {
  @State message: string = 'Bonjour!'
  @State message2: string = 'Hola!'

  build() {
    Stack() {
      // 主要内容区域
      Column() {
        Scroll() {
          Column() {
            Text(this.message)
              .fontSize(50)
              .fontWeight(FontWeight.Bold)

            Text(this.message2)
              .fontSize(30)
              .fontWeight(50)

            Button() {
              Text('Back')
                .fontSize(25)
                .fontWeight(FontWeight.Bold)
            }
            .type(ButtonType.Capsule)
            .margin({ top: 20 })
            .backgroundColor('#ffb04ad0')
            .width('35%')
            .height('5%')
            .onClick(() => {
              console.info(`Succeeded in clicking the 'Back' button.`)
              try {
                router.back()
                console.info('Succeeded in returning to the first page.')
              } catch (err) {
                const code = (err as BusinessError).code;
                const message = (err as BusinessError).message;
                console.error(`Failed to return to the first page. Code is ${code}, message is ${message}`)
              }
            })

            Divider()
              .margin(30)

            Text('笔记')
              .fontSize(40)
              .fontWeight(900)
              .width("95%")
              .textAlign(TextAlign.Start)

            Divider()
              .margin(20)

            Column() {
              Text('ArkTS工程目录')
                .fontSize(25)
                .fontWeight(800)
                .width("95%")
                .textAlign(TextAlign.Start)

              Column() {
                Text('AppScope全局目录')
                  .width('100%')
                  .textAlign(TextAlign.Start)

                Column() {
                  Text('  AppScope>resources')
                    .width('100%')
                    .textAlign(TextAlign.Start)
                  Text('  AppScope>app.json5')
                    .width('100%')
                    .textAlign(TextAlign.Start)
                }

                Text('Enrty')
                  .width('100%')
                  .textAlign(TextAlign.Start)

                Text('on_modules')
                  .width('100%')
                  .textAlign(TextAlign.Start)

                Text('build-profile.json5')
                  .width('100%')
                  .textAlign(TextAlign.Start)

                Text('hvigorfile.ts')
                  .width('100%')
                  .textAlign(TextAlign.Start)
              }
              .margin(10)

              Divider()
                .margin(20)

              Text('程序执行流程')
                .fontSize(25)
                .fontWeight(800)
                .width("95%")
                .textAlign(TextAlign.Start)

              Text('  entry -> module.json5/abilities(skills)/srcEntry -> EntryAbility/windowStage.loadContent -> Index/build')
                .margin(10)
                .width('100%')
                .textAlign(TextAlign.Start)

              Divider()
                .margin(20)

              Text('Entry模块')
                .fontSize(25)
                .fontWeight(800)
                .width("95%")
                .textAlign(TextAlign.Start)

              Divider()
                .margin(20)

              Text('DevEco高效开发')
                .fontSize(25)
                .fontWeight(800)
                .width("95%")
                .textAlign(TextAlign.Start)

              Divider()
                .margin(20)

              Text('资源访问')
                .fontSize(25)
                .fontWeight(800)
                .width("95%")
                .textAlign(TextAlign.Start)

              Divider()
                .margin(20)

              Text('应用文件配置')
                .fontSize(25)
                .fontWeight(800)
                .width("95%")
                .textAlign(TextAlign.Start)

              Divider()
                .margin(20)

              Text('资源分类')
                .fontSize(25)
                .fontWeight(800)
                .width("95%")
                .textAlign(TextAlign.Start)

              Divider()
                .margin(20)
            }
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