sub init()
    m.test = m.top.FindNode("first")
    m.carousel = m.top.findNode("carousel")
end sub

sub onFeedChanged(obj)
    feed = obj.getData()
    m.carousel.content = getRowListContent(obj)
    m.carousel.setFocus(true)
end sub  

function getRowListContent(obj)
  data = obj.getData()
  ? data.monsters
  monsters = data.monsters
  'Populate the RowList content here
  data = createObject("roSGNode", "ContentNode")

    row = data.createChild("ContentNode")
    row.title = "Monstas "

    for each monster in monsters
      item = row.createChild("SimpleRowListItemData")
      item.posterUrl = "http://devtools.web.roku.com/samples/images/Landscape_1.jpg"
      item.labelText = monster.name
    end for


  return data
end function