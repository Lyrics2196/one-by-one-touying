# Item-by-Item Touying

这是一个简单的 Typst 辅助脚本，旨在配合 [Touying](https://github.com/touying-typ/touying) 幻灯片展示库使用。它提供了便捷的函数来让列表（List）和有序列表（Enum）自动逐项显示，而无需手动在每一项后添加 `#pause`。

## 功能

- **`#item-by-item`**: 接受一个内容块，自动识别其中的列表项和枚举项，并在每项后添加暂停。
- **`#one-by-one`**: 接受多个参数，依次显示每个参数的内容，中间自动插入暂停。

## 使用方法

将 `item-by-item.typ` 文件放入你的项目目录中，并在你的 Typst 文件中导入：

```typst
#import "item-by-item.typ": *
// 或者如果在同一目录下
// #import "/item-by-item.typ": *
```

## 示例

### 列表/枚举逐项显示

你可以将整个列表包裹在 `#item-by-item[...]` 中，这样每一项都会在点击后才显示。

```typst
#import "@preview/touying:0.6.1": *
#import "item-by-item.typ": *

// 无序列表
#item-by-item[
  - 第一点
  - 第二点
  - 第三点
]

// 有序列表
#item-by-item[
  + 第一点
  + 第二点
  + 第三点
]
```

### 嵌套列表的处理

对于多级列表，`#item-by-item` 默认会将一级列表项与其次级列表作为一个整体进行暂停。若需要更细致的控制（例如在子列表项之间暂停），请按需在列表内手动插入 `#pause`。

```typst
#item-by-item[
  + 第一点
  + 第二点，下面有子项 #pause
    + 子项 A
    + 子项 B
  + 第三点
]
```

### One-by-one

如果你有一系列非列表的内容需要依次显示，可以使用 `#one-by-one`。

```typst
#one-by-one()[第一部分][第二部分][第三部分]
```
