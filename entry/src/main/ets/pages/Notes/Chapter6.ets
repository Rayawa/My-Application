import { router } from '@kit.ArkUI';

@Entry
@Component
struct Chapter6 {
  build() {
    Scroll(){
    Column() {
      Column(){Text(' ')}
      Column() {
        Text('Chapter 6')
          .fontSize(30)
          .fontWeight(800)
        Divider()
          .margin(10)
        Column() {
          Text('UI组件通用事件')
            .textAlign(TextAlign.Start)
            .fontSize(22)
            .fontWeight(900)
            .width('100%')
            .margin({left:20,top:10,right:10,bottom:10})

          // 第一行数据
          Row() {
            Text('点击事件')
              .layoutWeight(1)
              .fontWeight(800)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('用户点击某个UI组件时触发。')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Button('onClick示例')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Demo/demo_click' }).then(() => {
                  console.info('Succeeded in jumping to the click page.')
                })
              })
              .backgroundColor(Color.Orange)
              .margin(5)
          }
          // 第二行数据
          Row() {
            Text('焦点事件')
              .fontWeight(800)
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('点击、键盘导航或通过其他方式将焦点设置到某个UI组件上。\n 通过为UI组件添加onFocus和onBlur属性来指定焦点事件的处理函数。')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Button('onFocus示例')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Demo/demo_focus' }).then(() => {
                  console.info('Succeeded in jumping to the foucs page.')
                })
              })
              .backgroundColor(Color.Orange)
              .margin(5)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          // 第三行数据
          Row() {
            Text('触摸事件')
              .layoutWeight(1)
              .fontWeight(800)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('用户触摸屏幕上的UI组件时触发，实现与用户的手势交互和触摸操作相关的功能。')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .margin(5)
              .fontSize(12)
            Button('onTouch示例')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Demo/demo_touch' }).then(() => {
                  console.info('Succeeded in jumping to the touch page.')
                })
              })
              .backgroundColor(Color.Orange)
              .margin(5)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
          }
          .padding(20)
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)


        Column() {
          Text('Button组件')
            .textAlign(TextAlign.Start)
            .fontSize(22)
            .fontWeight(900)
            .width('100%')
            .margin({left:20,top:10,right:10,bottom:10})

          // 第一行数据
          Row() {
            Text('Button组件概述')
              .layoutWeight(1)
              .fontWeight(800)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('type: ButtonType {Capsule, Circle, Normal}')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('stateEffect: boolean\n //按钮按下时是否开启按压态显示效果')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)

          }

          // 第二行数据
          Row() {
            Text('Button组件事件')
              .layoutWeight(1)
              .fontWeight(800)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('接口：Button(options?: {type?: ButtonType, stateEffect?: boolean})')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .margin(5)
              .fontSize(12)
            Button('Button示例')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Demo/demo_button' }).then(() => {
                  console.info('Succeeded in jumping to the button page.')
                })
              })
              .backgroundColor(Color.Orange)
              .margin(5)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .padding(20)
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        Column() {
          Text('Radio组件')
            .textAlign(TextAlign.Start)
            .fontSize(22)
            .fontWeight(900)
            .width('100%')
            .margin({left:20,top:10,right:10,bottom:10})

          // 第一行数据
          Row() {
            Text('Radio组件概述')
              .layoutWeight(1)
              .fontWeight(800)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('value: sting\n //当前单选框的值')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('group: sting\n //当前单选框的所属群组名称，相同group的Radio只能有一个被选中')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('checked: boolean\n 设置单选框的选中状态。')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
          }

          // 第二行数据
          Row() {
            Text('Radio组件事件')
              .layoutWeight(1)
              .fontWeight(800)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('接口：Radio(options: {value: string, group: string})\n')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .margin(5)
              .fontSize(12)
            Button('Radio示例')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Demo/demo_radio' }).then(() => {
                  console.info('Succeeded in jumping to the radio page.')
                })
              })
              .backgroundColor(Color.Orange)
              .margin(5)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .padding(20)
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

        }
      Divider()
    }}
    .width('100%')
  }
}