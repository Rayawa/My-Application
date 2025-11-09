import { router } from '@kit.ArkUI';

@Entry
@Component
struct Chapter5 {
  build() {
    Scroll(){
    Column() {
      Column(){Text(' ')}
      Column() {
        Text('Chapter 5')
          .fontSize(30)
          .fontWeight(800)
        Divider()
          .margin(10)
        Column() {
          Text('State组件内状态装饰器')
            .textAlign(TextAlign.Start)
            .fontSize(22)
            .fontWeight(900)
            .width('100%')
            .margin({left:20,top:10,right:10,bottom:10})

          // 第一行数据
          Row() {
            Text('State装饰器概述')
              .layoutWeight(1)
              .fontWeight(800)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('State为私有，只能通过组件内访问，与@Prop@Link@Object之间同步')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Button('state示例')
              .layoutWeight(1)
              .onClick(() => {
                router.pushUrl({ url: 'pages/Demo/demo_state' }).then(() => {
                  console.info('Succeeded in jumping to the state page.')
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
            Text('无装饰器参数，不与父组件中任何变量类型同步')
              .layoutWeight(1)
              .fontSize(12)
              .textAlign(TextAlign.Center)
              .margin(5)
            Text('支持Object, class, string, number, boolean, enum类型')
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
            Text('可以从父组件或本地初始化')
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
                router.pushUrl({ url: 'pages/Demo/demo_prop' }).then(() => {
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
                router.pushUrl({ url: 'pages/Demo/demo_link' }).then(() => {
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
    }.margin({top:40})
    }
    .width('100%')
  }
}