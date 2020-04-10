function init()
    m.select_list=m.top.findNode("select_list")
    m.select_list.setFocus(true)
    m.top.observeField("visible", "onVisibleChange")
end function  

sub onVisibleChange()
  if m.top.visible = true then
    m.select_list.setFocus(true)
  end if
end sub