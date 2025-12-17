// // EntityProcessor.ts
// import { textProcessing, EntityType } from '@kit.NaturalLanguageKit';
//
// export class EntityProcessor {
//   /**
//    * 从实体JSON对象中解析详细信息
//    */
//   static parseEntityDetails(entity: textProcessing.Entity): any {
//     if (!entity.jsonObject) {
//       return null;
//     }
//
//     try {
//       const jsonObj = JSON.parse(entity.jsonObject);
//
//       switch (entity.type) {
//         case EntityType.DATETIME:
//           return this.parseDateTimeEntity(jsonObj);
//         case EntityType.LOCATION:
//           return this.parseLocationEntity(jsonObj);
//         case EntityType.PHONE_NO:
//           return this.parsePhoneEntity(jsonObj);
//         case EntityType.ID_NO:
//           return this.parseIdNoEntity(jsonObj);
//         default:
//           return jsonObj;
//       }
//     } catch (e) {
//       console.warn('解析实体JSON失败:', e);
//       return null;
//     }
//   }
//
//   /**
//    * 实体分类统计
//    */
//   static categorizeEntities(entities: textProcessing.Entity[]): Record<string, textProcessing.Entity[]> {
//     const categories: Record<string, textProcessing.Entity[]> = {};
//
//     entities.forEach(entity => {
//       const type = entity.type;
//       if (!categories[type]) {
//         categories[type] = [];
//       }
//       categories[type].push(entity);
//     });
//
//     return categories;
//   }
//
//   /**
//    * 在文本中高亮显示实体
//    */
//   static highlightEntities(
//     text: string,
//     entities: textProcessing.Entity[]
//   ): HighlightedText[] {
//     if (entities.length === 0) {
//       return [{ text, isEntity: false }];
//     }
//
//     // 按位置排序
//     const sortedEntities = [...entities].sort((a, b) => a.charOffset - b.charOffset);
//     const highlighted: HighlightedText[] = [];
//     let lastIndex = 0;
//
//     sortedEntities.forEach(entity => {
//       // 添加非实体部分
//       if (entity.charOffset > lastIndex) {
//         highlighted.push({
//           text: text.substring(lastIndex, entity.charOffset),
//           isEntity: false
//         });
//       }
//
//       // 添加实体部分
//       highlighted.push({
//         text: entity.text,
//         isEntity: true,
//         entityType: entity.type,
//         entityData: this.parseEntityDetails(entity)
//       });
//
//       lastIndex = entity.charOffset + entity.text.length;
//     });
//
//     // 添加剩余文本
//     if (lastIndex < text.length) {
//       highlighted.push({
//         text: text.substring(lastIndex),
//         isEntity: false
//       });
//     }
//
//     return highlighted;
//   }
//
//   // ========== 私有方法 ==========
//
//   private static parseDateTimeEntity(json: any): DateTimeInfo {
//     return {
//       year: json.year,
//       month: json.month,
//       day: json.day,
//       hour: json.hour,
//       minute: json.minute,
//       second: json.second,
//       timezone: json.timezone,
//       timestamp: json.timestamp
//     };
//   }
//
//   private static parseLocationEntity(json: any): LocationInfo {
//     return {
//       province: json.province,
//       city: json.city,
//       district: json.district,
//       street: json.street,
//       fullAddress: json.fullAddress
//     };
//   }
//
//   private static parsePhoneEntity(json: any): PhoneInfo {
//     return {
//       number: json.number,
//       areaCode: json.areaCode,
//       operator: json.operator,
//       isValid: json.isValid
//     };
//   }
//
//   private static parseIdNoEntity(json: any): IdNoInfo {
//     return {
//       number: json.number,
//       birthDate: json.birthDate,
//       gender: json.gender,
//       region: json.region
//     };
//   }
// }
//
// // 类型定义
// interface HighlightedText {
//   text: string;
//   isEntity: boolean;
//   entityType?: EntityType;
//   entityData?: any;
// }
//
// interface DateTimeInfo {
//   year?: number;
//   month?: number;
//   day?: number;
//   hour?: number;
//   minute?: number;
//   second?: number;
//   timezone?: string;
//   timestamp?: number;
// }
//
// interface LocationInfo {
//   province?: string;
//   city?: string;
//   district?: string;
//   street?: string;
//   fullAddress?: string;
// }
//
// interface PhoneInfo {
//   number: string;
//   areaCode?: string;
//   operator?: string;
//   isValid?: boolean;
// }
//
// interface IdNoInfo {
//   number: string;
//   birthDate?: string;
//   gender?: string;
//   region?: string;
// }