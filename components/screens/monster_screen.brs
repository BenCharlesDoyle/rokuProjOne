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
  ? obj.getData()
  'Populate the RowList content here
  data = createObject("roSGNode", "ContentNode")

  for numRows = 0 to 1
    row = data.createChild("ContentNode")
    row.title = "Row " + stri(numRows)

    for i = 1 to 3
      item = row.createChild("SimpleRowListItemData")
      item.posterUrl = "http://devtools.web.roku.com/samples/images/Landscape_1.jpg"
      item.labelText = "This is item " + stri(numRows * 3 + i)
    end for
  end for

  return data
end function