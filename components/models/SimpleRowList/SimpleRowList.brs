
' SimpleRowList init function
'
' @since version 1.0
sub init()
  m.top.setFields({
    itemComponentName: "SimpleRowListItem",
    numRows: 2,
    itemSize: [196 * 3 + 20 * 2, 213],
    rowHeights: [213],
    rowItemSize: [[196, 213], [196, 213], [196, 213]],
    itemSpacing: [0, 80],
    rowItemSpacing: [[20, 0]],
    rowLabelOffset: [[0, 30]],
    rowFocusAnimationStyle: "floatingFocus",
    showRowLabel: [true, true],
    rowLabelColor: "0xA0B033FF",
    content: ""
    visible: true
  })

  m.top.setFocus(false)
  m.top.observeField("rowItemFocused", "onRowItemFocused")
end sub

' SimpleRowList function to generate the row list content
'
' @return {object} a populated content node
' @since version 1.0


' SimpleRowList function to handle when the row item focus has changed
'
' @since version 1.0
 sub onRowItemFocused(obj)
 ' ? m.top.content.getChild(obj.getData()[0]).getChild(obj.getData()[1]).videoUrl
 end sub
