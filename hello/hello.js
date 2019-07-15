function proc(e) {
  e.getIn().setBody('Hello JavaScript Camel K!')
}

from('timer:tick')
  .process(proc)
  .to('log:info')