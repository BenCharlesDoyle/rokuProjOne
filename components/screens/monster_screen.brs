sub init()
    m.test = m.top.FindNode("first")

end sub

sub onFeedChanged(obj)
    feed = obj.getData()
    ? feed
    m.test.text = feed.monsters[0].description

end sub  