
' SimpleRowistItem init function
'
' @since version 1.0
sub init()
  m.itemContainer = m.top.findNode("itemContainer")
  m.itemImage = m.top.findNode("itemImage")
  m.itemText = m.top.findNode("itemText")

  setupItem()
end sub

' SimpleRowistItem function to update item data when the content changes
'
' @since version 1.0
sub itemContentChanged()
  itemData = m.top.itemContent
  m.itemImage.uri = itemData.posterUrl
  m.itemText.text = itemData.labelText
end sub


