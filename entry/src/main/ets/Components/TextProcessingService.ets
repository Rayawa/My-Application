// // TextProcessingService.ts
// import { textProcessing, EntityType } from '@kit.NaturalLanguageKit';
// import { BusinessError } from '@kit.BasicServicesKit';
// import { hilog } from '@kit.PerformanceAnalysisKit';
//
// export class TextProcessingService {
//   private isInitialized: boolean = false;
//   private readonly TAG: string = 'TextProcessingService';
//
//   /**
//    * 初始化NLP引擎（推荐提前调用以减少首次使用延迟）
//    */
//   async init(): Promise<boolean> {
//     try {
//       const result = await textProcessing.init();
//       this.isInitialized = result;
//       hilog.info(0x0000, this.TAG, `NLP引擎初始化: ${result ? '成功' : '失败'}`);
//       return result;
//     } catch (error) {
//       const err = error as BusinessError;
//       hilog.error(0x0000, this.TAG,
//         `初始化失败 - 错误码: ${err.code}, 消息: ${err.message}`);
//       return false;
//     }
//   }
//
//   /**
//    * 文本分词与词性标注
//    * @param text 待分析文本
//    * @returns 分词结果数组
//    */
//   async wordSegment(text: string): Promise<textProcessing.WordSegment[]> {
//     this.validateText(text);
//
//     try {
//       const segments = await textProcessing.getWordSegment(text);
//       hilog.debug(0x0000, this.TAG, `分词成功，共 ${segments.length} 个词语`);
//       return segments;
//     } catch (error) {
//       const err = error as BusinessError;
//       hilog.error(0x0000, this.TAG,
//         `分词失败 - 错误码: ${err.code}, 消息: ${err.message}`);
//       throw this.handleError(err);
//     }
//   }
//
//   /**
//    * 实体识别
//    * @param text 待分析文本
//    * @param entityTypes 指定识别的实体类型（可选，默认全部）
//    * @returns 识别出的实体数组
//    */
//   async recognizeEntities(
//     text: string,
//     entityTypes?: EntityType[]
//   ): Promise<textProcessing.Entity[]> {
//     this.validateText(text);
//
//     const config: textProcessing.EntityConfig = entityTypes ?
//       { entityTypes } : undefined;
//
//     try {
//       const entities = await textProcessing.getEntity(text, config);
//       hilog.debug(0x0000, this.TAG,
//         `实体识别成功，共 ${entities.length} 个实体`);
//       return entities;
//     } catch (error) {
//       const err = error as BusinessError;
//       hilog.error(0x0000, this.TAG,
//         `实体识别失败 - 错误码: ${err.code}, 消息: ${err.message}`);
//       throw this.handleError(err);
//     }
//   }
//
//   /**
//    * 按类型筛选实体
//    */
//   async recognizeSpecificEntity(
//     text: string,
//     entityType: EntityType
//   ): Promise<textProcessing.Entity[]> {
//     const allEntities = await this.recognizeEntities(text, [entityType]);
//     return allEntities.filter(entity => entity.type === entityType);
//   }
//
//   /**
//    * 释放NLP引擎资源
//    */
//   async release(): Promise<boolean> {
//     try {
//       const result = await textProcessing.release();
//       this.isInitialized = !result;
//       hilog.info(0x0000, this.TAG, `NLP引擎释放: ${result ? '成功' : '失败'}`);
//       return result;
//     } catch (error) {
//       const err = error as BusinessError;
//       hilog.error(0x0000, this.TAG,
//         `释放失败 - 错误码: ${err.code}, 消息: ${err.message}`);
//       return false;
//     }
//   }
//
//   /**
//    * 文本预处理：同时进行分词和实体识别
//    */
//   async analyzeText(text: string): Promise<{
//     segments: textProcessing.WordSegment[],
//     entities: textProcessing.Entity[],
//     summary: AnalysisSummary
//   }> {
//     const [segments, entities] = await Promise.all([
//       this.wordSegment(text),
//       this.recognizeEntities(text)
//     ]);
//
//     const summary: AnalysisSummary = {
//       wordCount: segments.length,
//       entityCount: entities.length,
//       entityTypes: [...new Set(entities.map(e => e.type))],
//       namedEntities: entities.filter(e =>
//       e.type === EntityType.NAME || e.type === EntityType.LOCATION
//       )
//     };
//
//     return { segments, entities, summary };
//   }
//
//   // ========== 私有方法 ==========
//
//   private validateText(text: string): void {
//     if (!text || text.trim().length === 0) {
//       throw new Error('输入文本不能为空');
//     }
//
//     // 文本长度限制（根据文档要求）
//     if (text.length > 5000) { // 假设限制，请参考实际文档
//       throw new Error('输入文本过长，请限制在5000字符以内');
//     }
//   }
//
//   private handleError(error: BusinessError): Error {
//     switch (error.code) {
//       case 200:
//         return new Error('处理超时，请稍后重试');
//       case 401:
//         return new Error('参数校验失败，请检查输入');
//       case 1011200001:
//         return new Error('处理失败，请重试');
//       case 1011200002:
//         return new Error('服务异常，请稍后再试');
//       default:
//         return new Error(`未知错误: ${error.message}`);
//     }
//   }
// }
//
// // 分析结果摘要接口
// interface AnalysisSummary {
//   wordCount: number;
//   entityCount: number;
//   entityTypes: EntityType[];
//   namedEntities: textProcessing.Entity[];
// }