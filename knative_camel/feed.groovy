from('timer:tick?period=1s')
  .setBody().constant('Burr Wuz Here')
  .to('log:info')
  .to('knative:channel/messages')