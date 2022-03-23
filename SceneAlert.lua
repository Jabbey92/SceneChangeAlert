
Instance.properties = properties({
    { name="SceneName", type="Text", onUpdate="onNameUpdate" },
    { name="Alert", type="Alert" }
})

function Instance:onInit()
    if not self.SceneName then
        local name = getEditor():getScene()
        self.properties.SceneName = name
        self:setName(name)
    end
end

function Instance:onNameUpdate()
    local name = self.properties.SceneName
    if #name == 0 then
        print("Scene name cannot be blank")
        name = "Unnamed"
    end
    self:setName(name)
end