import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Second {
  @State message: string = 'Bonjour!'
  @State message2: string = 'Hola!'

  build() {
    Row() {
      Column() {
        Column(){Text(' ').margin(80)}
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
        .margin({
          top: 20
        })
        .backgroundColor('#ffb04ad0')
        .width('35%')
        .height('5%')
        // 返回按钮绑定onClick事件，点击按钮时返回到第一页
        .onClick(() => {
          console.info(`Succeeded in clicking the 'Back' button.`)
          try {
            // 返回第一页
            router.back()
            console.info('Succeeded in returning to the first page.')
          } catch (err) {
            let code = (err as BusinessError).code;
            let message = (err as BusinessError).message;
            console.error(`Failed to return to the first page.Code is ${code}, message is ${message}`)
          }
        })
        // 悬浮按钮 - 定位到左下角
        Button() {
          Image($r('app.media.back'))
            .width(24)
            .height(24)
            .fillColor(Color.White)
        }
        .onClick(() => {
          router.back()
          console.info('Succeeded in jumping to the index page.')
        })
        .type(ButtonType.Circle)
        .backgroundColor($r('sys.color.point_color_checked'))
        .width(50)
        .height(50)
        .shadow({
          radius: 4,
          color: '#182431',
          offsetX: 2,
          offsetY: 4
        })
        .stateEffect(true)
        .position({ // 使用绝对定位
          x: 20, // 距离左边20vp
          y: '90%' // 距离顶部90%，即靠近底部
        })
        .zIndex(999) // 确保按钮在最上层
      }
      .width('100%')
      .height('100%')
      .backgroundColor(Color.White)
    }
    .height('100%')
  }
}