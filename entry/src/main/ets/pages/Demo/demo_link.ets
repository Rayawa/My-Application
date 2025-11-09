import { router } from '@kit.ArkUI';
@Component
struct SonComponent {
  @Link count: number;

  build() {
    Column() {
      Text(`子组件计数： ${this.count}`)

      Button(`子组件 + 1`).onClick(() => {
        this.count++;
      })
    }
  }
}


@Entry
@Component
struct ParentComponent {
  @State count2: number = 0;

  build() {
      // 主要内容区域
      Column({ space: 10 }) {
        Text(`父组件计数： ${this.count2}`)
        Button(`父组件计数 + 1`).onClick(() => {
          this.count2 += 1;
        })
        //实例化子组件
        SonComponent({ count: $count2 })
      }
      .width('100%')
      .padding(10)
  }
}