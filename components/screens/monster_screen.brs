sub init()
    m.test = m.top.FindNode("first")
    m.carousel = m.top.FindNode("carousel")
end sub

sub onFeedChanged(obj)
    feed = obj.getData()
    m.carousel.content = getRowListContent(obj)
    m.carousel.setFocus(true)
end sub  

function getRowListContent(obj)
  data = obj.getData()
  monsters = data.monsters
  'Populate the RowList content here
  data = createObject("roSGNode", "ContentNode")

    row = data.createChild("ContentNode")
    row.title = "Monstas "

    for each monster in monsters
      item = row.createChild("SimpleRowListItemData")
      item.posterUrl = monster.thumbnail
      item.labelText = monster.name
      item.videoUrl = monster.video
    end for


  return data
end function