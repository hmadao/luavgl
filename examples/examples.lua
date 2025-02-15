local container = lvgl.Object(nil, {
    w = lvgl.HOR_RES(),
    h = lvgl.VER_RES(),
    bg_color = "#888",
    bg_opa = lvgl.OPA(100),
    border_width = 0,
    radius = 0,
    flex = {
        flex_direction = "row",
        flex_wrap = "wrap"
    }
})

print("created container", container)

local function createBtn(parent, name)
    local root = parent:Object {
        w = lvgl.SIZE_CONTENT,
        h = lvgl.SIZE_CONTENT,
        bg_color = "#ccc",
        bg_opa = lvgl.OPA(100),
        border_width = 0,
        radius = 10,
        pad_all = 20,
    }

    root:onClicked(function()
        container:delete()
        require(name)
    end)

    root:Label {
        text = name,
        text_color = "#333",
        align = lvgl.ALIGN.CENTER,
    }
end

createBtn(container, "font")
createBtn(container, "uservalue")
createBtn(container, "roller")
createBtn(container, "dropdown")
createBtn(container, "keyboard")
createBtn(container, "extension")
createBtn(container, "fs")
createBtn(container, "indev")
createBtn(container, "group")
createBtn(container, "animation")
createBtn(container, "protectedcall")
createBtn(container, "flappyBird/flappyBird")
