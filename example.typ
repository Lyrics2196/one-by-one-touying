#import "@preview/touying:0.6.1": *
#import themes.simple: *
#import "/item-by-item.typ": *

== 列表逐项显示 (List)

#let my-list = [
  + 第一步：定义函数 #pause
  + 第二步：插入内容
  + 第三步：享受动画
]

my-list = \
#repr(my-list)

\

my-list-children = \
#repr(my-list.children)

#repr(my-list.children.at(1)) \
#repr(type(my-list.children.at(1))) \
#repr(my-list.children.at(1).func())

#show: simple-theme.with()

#item-by-item[
  - 第一点：Touying 非常灵活
  - 第二点：支持自定义函数
    - 2.1 dsads
  - 第三点：性能优秀
]

== 枚举逐项显示 (Enum)

#item-by-item[
  + 第一步：定义函数
  + 第二步：插入内容
  + 第三步：享受动画
]
