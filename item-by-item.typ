#import "@preview/touying:0.6.1": *


#let proc-seq(body) = {
  if body.func() == list.item {
    let new-body = body.body + [ ] + pause
    return list.item(new-body)
  } else if body.func() == enum.item {
    let new-body = body.body + [ ] + pause
    return enum.item(new-body)
  } else {
    return body
  }
}

#let item-by-item(body) = {
  if body.func() == [].func() {
    // let children = body.children.filter(it => it != [ ] and it != parbreak())
    let new-seq = body.children.map(proc-seq)
    return new-seq.sum()
  }
}

#let one-by-one(..bodies) = {
  for body in bodies.pos() {
    body + pause
  }
}
