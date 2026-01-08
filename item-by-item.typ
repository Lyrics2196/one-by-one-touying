#import "@preview/touying:0.6.1": *


#let proc-seq(body) = {
  if body.func() == list.item or body.func() == enum.item {
    return (body.func())(body.body + [ ] + pause)
  } else {
    return body
  }
}

#let item-by-item(body) = {
  if body.func() == [].func() {
    return body.children.map(proc-seq).sum()
  } else {
    return body
  }
}

#let one-by-one(..bodies) = {
  return bodies.pos().map(it => it + pause).sum()
}
