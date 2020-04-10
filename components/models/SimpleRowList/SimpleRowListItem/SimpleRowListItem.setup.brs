
' SimpleRowistItem function to setup the item
'
' @since version 1.0
sub setupItem()
  m.itemContainer.setFields({
    layoutDirection: "vert",
    vertAlignment: "top",
    itemSpacings: 20,
    translation: [0, 0]
  })

  setupItemImage()
  setupItemText()
end sub

' SimpleRowistItem function to setup the item image
'
' @since version 1.0
sub setupItemImage()
  m.itemImage.setFields({
    translation: [0, 0],
    width: 196,
    height: 148
  })
end sub

' SimpleRowistItem function to setup the item text
'
' @since version 1.0
sub setupItemText()
  m.itemText.setFields({
    horizAlign: "center",
    translation: [0, 0],
    font: "font:MediumSystemFont",
    width: 196
  })
end sub