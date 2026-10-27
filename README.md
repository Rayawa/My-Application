# My-Application

English | [简体中文](README_zh.md)

A HarmonyOS sample application for ArkUI components, navigation and text-processing experiments.

Archived project retained for reference.

## Overview

The project groups UI exercises, component demonstrations, WebView pages and text/entity extraction experiments in one application. It serves as a collection of development examples.

## Technology and Dependencies

ArkTS, ArkUI, HarmonyOS, OHPM and Hvigor. The template targets HarmonyOS 6.0.0 (API 20). The entry package declares `@kit.NaturalLanguageKit`; tests use Hypium 1.0.24 and Hamock 1.0.0.

## Repository Structure

- `entry/src/main/ets/` — ArkTS application code
- `entry/src/main/resources/` — module resources and routes
- `AppScope/` — application metadata and resources
- `build-profile.example.json5` — portable build configuration template
- `oh-package.json5` — package and test dependencies
- `hvigor/` — build configuration

## Quick Start

1. Install DevEco Studio and a HarmonyOS SDK compatible with `build-profile.example.json5`.
2. Copy `build-profile.example.json5` to `build-profile.json5` and configure the local SDK and signing in DevEco Studio.
3. Open the repository root, restore dependencies with OHPM through the IDE, and select the `entry` module.
4. Select a compatible device or emulator and run the application. Keep signing material and machine-specific paths local.
