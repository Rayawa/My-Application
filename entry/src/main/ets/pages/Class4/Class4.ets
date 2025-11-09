import { router } from '@kit.ArkUI';
import { backButton } from '../../Components/backButton';

@Entry
@Component
struct Class4 {

  build() {
    Stack() {
      Column() {
        Scroll() {
          Column() {

          }
          .width('100%')
          .height('100%')
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