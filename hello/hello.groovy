from('timer:tick?period=1s')
  .setBody().constant('Hello Groovy Camel K')
  .to('log:info')