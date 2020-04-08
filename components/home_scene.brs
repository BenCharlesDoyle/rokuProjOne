function init()
	? "[home_scene] init"
	m.category_screen = m.top.findNode("select_screen")
	m.copyright_screen = m.top.findNode("copyright_screen")

	m.category_screen.observeField("list_item_selected", "onCategorySelected")
	m.category_screen.setFocus(true)
end function

sub onCategorySelected(obj)
    list = m.category_screen.findNode("select_list")
    ? "checkedItem: ";list.checkedItem
    ? "ContentNode: ";list.content.getChild(obj.getData())
    item = list.content.getChild(obj.getData())
    loadFeed(item.feed_url)
end sub

sub loadFeed(url)
  m.feed_task = createObject("roSGNode", "load_feed_task")
  m.feed_task.observeField("response", "onFeedResponse")
  m.feed_task.url = url
  m.feed_task.control = "RUN"
end sub  

sub onFeedResponse(obj)
	response = obj.getData()
	data = parseJSON(response)
	if data <> Invalid 
        if data.monsters <> invalid
			? "User selected Baddies"

		else if data.info <> invalid
			? "User selected Copyright"
			m.category_screen.visible = false
			m.copyright_screen.visible = true
			m.copyright_screen.feed_data = data
		end if
	else
		? "FEED RESPONSE IS EMPTY!"
	end if
end sub