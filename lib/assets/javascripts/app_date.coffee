class @AppDate

  constructor : (date = new Date) ->
    @date = date

  @daysFromNow : (n) ->
    date = new Date
    date.setDate(date.getDate()+n);
    date

  @daysAgo : (n) -> @daysFromNow(-n)

  @yesterday : -> @daysAgo(1)

  @today : -> @daysAgo(0)

  @toString : -> 
    date = (new AppDate).toString()

  toString : ->
    date = [@date.getDate(), (@date.getMonth() + 1), @date.getFullYear()].join('/')
    time = [@date.getHours(), @date.getMinutes()].join(':')
    "#{date} #{time}"
