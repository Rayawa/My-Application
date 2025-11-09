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
            Text('')
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
            Text('')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Button('onFocus/onBlur示例')
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
            Text('')
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
          Text('Prop父子单向同步装饰器')
            .textAlign(TextAlign.Start)
            .fontSize(22)
            .fontWeight(900)
            .width('100%')
            .margin({left:20,top:10,right:10,bottom:10})

          // 第一行数据
          Row() {
            Text('Prop装饰器概述')
              .layoutWeight(1)
              .fontWeight(800)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('父组件数据源修改时，所有Prop装饰都会更新，子组件本地值会因为父组件的修改而被覆盖')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Button('Prop示例')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Class3/try_prop' }).then(() => {
                  console.info('Succeeded in jumping to the prop page.')
                })
              })
              .backgroundColor(Color.Orange)
              .margin(5)
          }
          // 第二行数据
          Row() {
            Text('使用规则说明')
              .fontWeight(800)
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('无装饰器参数，单向同步给子组件')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('支持string, number, boolean, enum类型')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          // 第三行数据
          Row() {
            Text('变量的传递/访问规则')
              .layoutWeight(1)
              .fontWeight(800)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('支持父组件中常规变量、@State、@Link、@Prop、@Provide、@Consume、@ObjectLink、@StorageLink、@StorageProp、@LocalStorageLink和@LocalStorageProp装饰的变量，初始化子组件的@State')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .margin(5)
              .fontSize(12)
            Text('用于初始化子组件：常规变量、@State、@Link、@Prop、@Provide')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .padding(20)
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        Divider()
          .margin(10)
        Column() {
          Text('Link父子双向同步装饰器')
            .textAlign(TextAlign.Start)
            .fontSize(22)
            .fontWeight(900)
            .width('100%')
            .margin({left:20,top:10,right:10,bottom:10})

          // 第一行数据
          Row() {
            Text('Link装饰器概述')
              .layoutWeight(1)
              .fontWeight(800)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('父组件数据源修改时，所有Prop装饰都会更新，子组件本地值会因为父组件的修改而被覆盖')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Button('Link示例')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Class3/try_link' }).then(() => {
                  console.info('Succeeded in jumping to the link page.')
                })
              })
              .backgroundColor(Color.Orange)
              .margin(5)
          }
          // 第二行数据
          Row() {
            Text('使用规则说明')
              .fontWeight(800)
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('无装饰器参数，@State @StorageLink @Link 和 @Link 双向数据同步）')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('支持Object、class、string、number、boolean、enum类型')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)

          // 第三行数据
          Row() {
            Text('变量的传递/访问规则')
              .layoutWeight(1)
              .fontWeight(800)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('允许父组件中@State、@Link、@Prop、@Provide、@Consume、@ObjectLink、@StorageLink、@StorageProp、@LocalStorageLink和@LocalStorageProp装饰变量初始化子组件@Link')
              .layoutWeight(1)
              .textAlign(TextAlign.Center)
              .margin(5)
              .fontSize(12)
            Text('用于初始化子组件：常规变量、@State、@Link、@Prop、@Provide')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
          }
          .width('100%')
          .justifyContent(FlexAlign.SpaceBetween)
        }
        .padding(20)
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        Divider()
          .margin(10)
        }

      Divider()
    }}
    .width('100%')
  }
}