# My-Application

[English](README.md) | 简体中文

用于 ArkUI 组件、页面导航与文本处理实验的 HarmonyOS 示例应用。

归档项目，保留用于参考。

## 项目概述

项目汇集界面练习、组件演示、WebView 页面及文本和实体提取实验，作为开发示例集合。

## 技术栈与依赖

ArkTS、ArkUI、HarmonyOS、OHPM、Hvigor。构建模板面向 HarmonyOS 6.0.0（API 20）；entry 声明 `@kit.NaturalLanguageKit`，测试使用 Hypium 1.0.24 和 Hamock 1.0.0。

## 文件结构

- `entry/src/main/ets/` — ArkTS 应用代码
- `entry/src/main/resources/` — 模块资源与路由
- `AppScope/` — 应用配置与资源
- `build-profile.example.json5` — 可移植构建配置模板
- `oh-package.json5` — 包与测试依赖
- `hvigor/` — 构建配置

## 快速上手

1. 安装 DevEco Studio 及与 `build-profile.example.json5` 匹配的 HarmonyOS SDK。
2. 将 `build-profile.example.json5` 复制为 `build-profile.json5`，在 IDE 中配置本地 SDK 与签名。
3. 打开仓库根目录，通过 IDE 的 OHPM 恢复依赖并选择 `entry` 模块。
4. 选择兼容设备或模拟器后运行；签名材料与机器路径仅在本地配置。
