class TodoItem {
  id: number = 0
  text: string = ''
  completed: boolean = false
  static completed: boolean;
}
@Entry
@Component
struct Index {
  @State date: string = '';
  @State todoList: TodoItem[] = [
    { id: 1, text: '早起晨练', completed: true },
    { id: 2, text: '享受早餐', completed: true },
    { id: 3, text: '上课学习', completed: false },
    { id: 4, text: '午餐就餐', completed: false },
    { id: 5, text: '上课学习', completed: false },
    { id: 6, text: '午餐就餐', completed: false },
    { id: 7, text: '参加活动', completed: false },
    { id: 8, text: '学习ArkTS', completed: false },
    { id: 9, text: '晚餐就餐', completed: false },
    { id: 10, text: '放松休息', completed: false },
    { id: 11, text: '睡觉充电', completed: false }
  ]

  aboutToAppear() {
    this.updateDate();
  }

  updateDate() {
    const now = new Date();
    const year = now.getFullYear();
    const month = (now.getMonth() + 1).toString().padStart(2, '0');
    const day = now.getDate().toString().padStart(2, '0');
    this.date = `${year}年${month}月${day}日`;
  }

  build() {
    Column() {
      Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
        Text('待办事宜')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)

        Text(this.date)
          .fontSize(15)
          .fontColor('#4D5600')
      }
      .margin({ top: 40, bottom: 20 })

      List({ space: 10 }) {
        ForEach(this.todoList, (item: TodoItem, index?: number) => {
          ListItem() {
            this.TodoItemBuilder(item)
          }
        }, (item: TodoItem) => item.id.toString())
      }
      .layoutWeight(1)
    }
    .padding(20)
    .width('100%')
    .height('100%')
    .backgroundColor('#f5f5f5')
  }

  @Builder
  TodoItemBuilder(item: TodoItem) {
    Flex({ justifyContent: FlexAlign.SpaceBetween, alignItems: ItemAlign.Center }) {
      Row() {
        Image(item.completed ? $r('app.media.ic_ok') : $r('app.media.ic_default'))
          .width(28)
          .height(28)
          .onClick(() => {
            TodoItem.completed=!TodoItem.completed
          })

        Text(item.text)
          .fontSize(18)
          .margin({ left: 15 })
          .decoration({ type: item.completed ? TextDecorationType.LineThrough : TextDecorationType.None })
          .fontColor(item.completed ? '#999' : '#333')

      }

      if (item.completed) {
        Image($r('app.media.completed'))
          .width(20)
          .height(20)
          .margin({ left: 10 })
      }
    }
    .padding(15)

  }
}
