#import "@preview/touying:0.6.1": *
#import themes.simple: *
#import "/item-by-item.typ": *
#show: simple-theme.with()

== 列表逐项显示 (List)

#item-by-item[
  - 第一点：Touying 非常灵活
  - 第二点：支持自定义函数
    - 第2.1点
  - 第三点：性能优秀
]

最后一点也有个暂停。

== 列表逐项显示 (List) —— 多级列表pause嵌套

对于多级列表，`#item-by-item`将一级列表与其次级列表作为一个整体暂停。若需要更细致的对于暂停位置的控制，只需要按需在列表内插入`#pasue`即可。

#item-by-item[
  - 第一点：Touying 非常灵活
  - 第二点：支持自定义函数 #pause
    - 第2.1点
  - 第三点：性能优秀
]

最后一点也有个暂停。

== 枚举逐项显示 (Enum)

#item-by-item[
  + 第一步：定义函数
  + 第二步：插入内容
  + 第三步：享受动画
]

最后一点也有个暂停。
