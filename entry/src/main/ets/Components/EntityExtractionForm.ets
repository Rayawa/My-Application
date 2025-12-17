// // EntityExtractionForm.ets
// @Component
// export struct EntityExtractionForm {
//   private textProcessingService: TextProcessingService = new TextProcessingService();
//
//   @State inputText: string = '';
//   @State selectedTypes: EntityType[] = [];
//   @State extractionResult: textProcessing.Entity[] = [];
//
//   // 所有可选的实体类型
//   private allEntityTypes: EntityType[] = [
//     EntityType.NAME, EntityType.LOCATION, EntityType.PHONE_NO,
//     EntityType.EMAIL, EntityType.DATETIME, EntityType.ID_NO,
//     EntityType.URL, EntityType.FLIGHT_NO, EntityType.EXPRESS_NO,
//     EntityType.VERIFICATION_CODE
//   ];
//
//   build() {
//     Column({ space: 15 }) {
//       // 实体类型选择
//       Text('选择要识别的实体类型:')
//         .fontSize(16)
//
//       Wrap({ space: 10 }) {
//         ForEach(this.allEntityTypes, (type: EntityType) => {
//           Checkbox({
//             name: type,
//             group: 'entityTypes'
//           })
//             .select(this.selectedTypes.includes(type))
//             .onChange((checked: boolean) => {
//               this.toggleEntityType(type, checked);
//             })
//
//           Text(type)
//             .fontSize(14)
//             .margin({ left: 5 })
//         })
//       }
//       .width('90%')
//
//       // 快速选择按钮
//       Row({ space: 10 }) {
//         Button('全选')
//           .onClick(() => {
//             this.selectedTypes = [...this.allEntityTypes];
//           })
//
//         Button('清空')
//           .onClick(() => {
//             this.selectedTypes = [];
//           })
//
//         Button('个人信息')
//           .onClick(() => {
//             this.selectedTypes = [
//               EntityType.NAME,
//               EntityType.PHONE_NO,
//               EntityType.EMAIL,
//               EntityType.ID_NO
//             ];
//           })
//       }
//       .margin({ top: 10 })
//
//       // 文本输入
//       TextArea({
//         placeholder: '请输入包含实体的文本...\n例如: 张三的电话是13800138000，邮箱是zhangsan@example.com，住在北京市海淀区。'
//       })
//         .width('90%')
//         .height(150)
//         .onChange((value: string) => {
//           this.inputText = value;
//         })
//
//       // 提取按钮
//       Button('提取实体')
//         .width('90%')
//         .height(40)
//         .backgroundColor(Color.Blue)
//         .fontColor(Color.White)
//         .onClick(() => this.extractEntities())
//         .enabled(this.selectedTypes.length > 0 && this.inputText.trim().length > 0)
//
//       // 结果显示
//       if (this.extractionResult.length > 0) {
//         this.buildResultDisplay();
//       }
//     }
//     .width('100%')
//     .padding(20)
//   }
//
//   @Builder
//   buildResultDisplay() {
//     Column() {
//       Text('提取结果:')
//         .fontSize(18)
//         .fontWeight(FontWeight.Bold)
//         .margin({ bottom: 15 })
//
//       List({ space: 10 }) {
//         ForEach(this.extractionResult, (entity: textProcessing.Entity) => {
//           ListItem() {
//             Column({ space: 5 }) {
//               Row() {
//                 Text(entity.text)
//                   .fontSize(16)
//                   .fontWeight(FontWeight.Bold)
//                   .fontColor(this.getEntityColor(entity.type))
//
//                 Text(`(${entity.type})`)
//                   .fontSize(12)
//                   .fontColor(Color.Grey)
//                   .margin({ left: 8 })
//               }
//
//               Text(`位置: 第 ${entity.charOffset} 个字符`)
//                 .fontSize(12)
//                 .fontColor(Color.Grey)
//
//               // 显示解析的详细信息
//               if (entity.jsonObject) {
//                 const details = EntityProcessor.parseEntityDetails(entity);
//                 if (details) {
//                   Text('详细信息: ' + JSON.stringify(details))
//                     .fontSize(12)
//                     .fontColor(Color.DarkGrey)
//                     .margin({ top: 5 })
//                 }
//               }
//             }
//             .width('100%')
//             .padding(10)
//             .border({ width: 1, color: Color.LightGrey, radius: 8 })
//           }
//         })
//       }
//       .width('100%')
//       .height(300)
//     }
//   }
//
//   private async extractEntities() {
//     try {
//       this.extractionResult = await this.textProcessingService.recognizeEntities(
//         this.inputText,
//         this.selectedTypes
//       );
//     } catch (error) {
//       console.error('实体提取失败:', error);
//     }
//   }
//
//   private toggleEntityType(type: EntityType, checked: boolean): void {
//     if (checked) {
//       if (!this.selectedTypes.includes(type)) {
//         this.selectedTypes.push(type);
//       }
//     } else {
//       const index = this.selectedTypes.indexOf(type);
//       if (index >= 0) {
//         this.selectedTypes.splice(index, 1);
//       }
//     }
//   }
//
//   private getEntityColor(entityType: EntityType): Color {
//     // 同之前的方法
//     return Color.Blue;
//   }
// }