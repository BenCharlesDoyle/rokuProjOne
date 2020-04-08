sub init()
    m.name = m.top.FindNode("name")
    m.year = m.top.FindNode("year")
end sub  

sub onFeedChanged(obj)
    feed = obj.getData()
    ? "This is my feed changed data" feed.info[0].name
    m.year.text = feed.info[0].year
    m.name.text = feed.info[0].name

end sub  

sub showpostergrid()

  m.content_grid.visible=true
  m.content_grid.setFocus(true)
end sub